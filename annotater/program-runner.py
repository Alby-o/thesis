from os import listdir
from os.path import isfile, join
from annotater import run

sourceDir = "source"
outputDir = "out"

def main():
    inputFiles = [f for f in listdir(sourceDir) if isfile(join(sourceDir, f))]
    for f in inputFiles:
        output = join(outputDir, f.replace(".c", ".s"))
        filename = join(sourceDir, f)
        run(filename, output, 0)
    
if __name__ == "__main__":
    main()