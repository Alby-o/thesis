import argparse
import difflib
import os
from source import Source
from temp import temp_file_name, create_temp_folder, cleanup_temp_folder

parser = argparse.ArgumentParser(description="build a assembly output with annotations")
parser.add_argument('filename', help='The file to compile')
parser.add_argument('--output', default='out.s', help='Annotated output')
parser.add_argument('--optimisation', default=0, choices=[0, 1, 2, 3], type=int, help='optimisiation level')

def main(args):
    run(args.filename, args.output, args.optimisation)

def run(filename, output, optimisation, unannotatedOuptut = temp_file_name("s")):
    create_temp_folder()
    source = Source(filename)

    # Clone our source to begin with so we do not modify the original file
    source = source.clone()
    # Compile as-is to see output with optimisation
    assembly = source.compile(optimisation, output=unannotatedOuptut)
    
    # Transpile & insert inline assembly
    source.transpile()
    assemblyAnnotated = source.compile(optimisation, output=output)
    if (assembly.data != assemblyAnnotated.data):
        print(os.linesep + "Warning: There was a difference in the compiled outputs when annotated." + os.linesep)
    else:
        print(output)
    for line in difflib.unified_diff(assembly.data, assemblyAnnotated.data, fromfile='assembly', tofile='annotated', lineterm=''):
        print(line)
    cleanup_temp_folder()

if __name__ == "__main__":
    args = parser.parse_args()
    try:
        main(args)
    except KeyboardInterrupt:
        print('Interrupted')
        cleanup_temp_folder()
