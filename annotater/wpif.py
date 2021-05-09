import re
import os

class Wpif:
    var_regex = r'var\(.*?\)'

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
        print(result)
        
        return result

    def construct_asm(self, vars, varNames):
        # 1. Replace instances of var(x) with %num, 
        # asm("# L(%0) = high" : : "X"(i));
        
        comment = self.line
        inputOperands = ""
        for i, var in enumerate(vars):
            comment = comment.replace(var, f"%{i}", 1)
            varName = varNames[var]
            if len(inputOperands) > 0:
                inputOperands += ", "
            inputOperands += f'"X"({varName})'

        return f'asm("# {comment}" : : {inputOperands});{os.linesep}'

    def __str__(self):
        return str(self.line_number) + ": " + self.line
