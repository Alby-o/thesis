import re
import os

class Wpif:
    var_regex = r'var\(.*?\)'
    escape_chars = ['%', '|', '{', '}']
    constraints = "X"

    def __init__(self, line, line_number):
        self.line = line.strip()
        self.line_number = line_number
    
    def transform(self):
        # Find all vars
        vars = re.findall(Wpif.var_regex, self.line)
        varNames = {}
        
        # Extract variable names
        for var in vars:
            if var in varNames:
                continue

            varName = var[var.find("var(") + 4 : var.find(")")]
            varNames[var] = varName
        
        # Replace var names in line
        result = self.construct_asm(vars, varNames)
        
        return result

    def construct_asm(self, vars, varNames):
        # Replace instances of var(x) with %num, 
        # Construst asm statement
        
        comment = self.line
        inputOperands = ""
        
        # Escape special characters
        for char in Wpif.escape_chars:
            comment = comment.replace(char, "%" + char)
        comment = comment.replace('\\', '\\\\')
            
        for i, var in enumerate(vars):
            comment = comment.replace(var, f"%{i}", 1)
            varName = varNames[var]
            if len(inputOperands) > 0:
                inputOperands += ", "
            inputOperands += f'"{Wpif.constraints}"({varName})'

        return f'asm("# WPIF: {comment}" : : {inputOperands});{os.linesep}'

    def __str__(self):
        return str(self.line_number) + ": " + self.line
