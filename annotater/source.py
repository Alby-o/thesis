import subprocess
import shutil
from assembly import Assembly
from error import compile_error, copy_error
from temp import temp_file_name
from inline_asm import InlineAsm

class Source:
    def __init__(self, filename):
        self.filename = filename
        self.data = None
        
    def compile(self, optimisation, output = temp_file_name("s")):
        """
        Compile this source file in it's current form
        """

        try:
            compile = subprocess.Popen(['clang', self.filename, '-S', '-O' + str(optimisation), '-o', output], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        except FileNotFoundError:
            compile_error("Command line tool 'clang' is not installed on this device or cannot be found")

        stdout, stderr = compile.communicate()
        if (stderr):
            compile_error(stderr)
        
        try:
            assembly = Assembly.fromfilename(output)
        except FileNotFoundError:
            compile_error("Assembly file could not be found after compiling")
        return assembly

    def clone(self):
        """
        Clone this source file and return a new Source object
        """
        copy_filename = temp_file_name()
        try:
            shutil.copy(self.filename, copy_filename)
        except:
            copy_error(self.filename)
        return Source(copy_filename)

    def transpile(self):
        file = open(self.filename, 'r')
        self.data = file.readlines()
        annot_identifier = "annotation: "
        for i, line in enumerate(self.data):
            if annot_identifier in line:
                wpif = InlineAsm(line.split(annot_identifier)[1], 0)
                result = wpif.transform()
                self.data[i] = result
        file.close()
        file = open(self.filename, 'w')
        file.writelines(self.data)
        file.close()
        
