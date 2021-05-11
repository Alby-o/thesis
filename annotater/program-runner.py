from os import listdir
from os.path import isfile, join
from annotater import run

sourceDir = "source"
outputDir = "out"
optimisationLevels = [0,1,2,3]

def main():
    inputFiles = [f for f in listdir(sourceDir) if isfile(join(sourceDir, f))]

    for o in optimisationLevels:
        optimisationString = "-O" + str(o)
        for f in inputFiles:
            filenameRaw = f.replace(".c", "")
            output = join(outputDir,  filenameRaw + optimisationString + ".s")
            annotatedOutput = join(outputDir,  filenameRaw + optimisationString + "-annotated" + ".s")
            filename = join(sourceDir, f)
            run(filename, annotatedOutput, o, output)
    
if __name__ == "__main__":
    main()