import argparse
from source import Source
from temp import *

parser = argparse.ArgumentParser(description="build a assembly output with annotations")
parser.add_argument('filename', help='The file to compile')
parser.add_argument('--optimisation', default=0, choices=[0, 1, 2, 3], type=int, help='optimisiation level')

def main(args):
    create_temp_folder()
    source = Source(args.filename)
    assembly = source.compile(args.optimisation)
    source.clone()
    print("done")

if __name__ == "__main__":
    args = parser.parse_args()
    try:
        main(args)
        cleanup_temp_folder()
    except KeyboardInterrupt:
        print('Interrupted')
        cleanup_temp_folder()
