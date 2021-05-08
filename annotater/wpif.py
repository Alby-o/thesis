import re

class Wpif:
    def __init__(self, line, line_number):
        self.line = line.strip()
        self.line_number = line_number
    
    def transform(self):
        # Find all vars
        vars = re.findall('var\(.*?\)', self.line)
        varNames = {}
        
        # Extract variable names
        for i, var in enumerate(vars):
            if var in varNames:
                continue

            varName = var[var.find("var(") + 4 : var.find(")")]
            varNames[var] = varName
        
        # Replace var names in line
        
        print(varNames)
        return "TRANSFORMED LINE"

    def __str__(self):
        return str(self.line_number) + ": " + self.line
