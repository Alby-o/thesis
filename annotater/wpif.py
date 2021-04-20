class Wpif:
    def __init__(self, line, line_number):
        self.line = line.strip()
        self.line_number = line_number
    
    def transform(self):
        return "TRANSFORMED LINE"

    def __str__(self):
        return str(self.line_number) + ": " + self.line
