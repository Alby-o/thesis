from error import compile_error

class Assembly:
    def __init__(self, data):
        self.raw = data
        self.data = []
        for line in data:
            uncommented_line = line.split('#')[0].strip()
            if uncommented_line:
                self.data.append(uncommented_line)
        
    @classmethod
    def fromfilename(cls, filename):
        data = open(filename, 'r').readlines()    
        return cls(data)