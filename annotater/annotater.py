import argparse
from compile import compile_source

parser = argparse.ArgumentParser(description="build a assembly output with annotations")
parser.add_argument('filename', help='The file to compile')
parser.add_argument('--optimisation', default=0, choices=[0, 1, 2, 3], type=int, help='optimisiation level')

def main(args):
    assembly = compile_source(args.filename, args.optimisation)
    print(assembly.data)

if __name__ == "__main__":
    args = parser.parse_args()
    main(args)
