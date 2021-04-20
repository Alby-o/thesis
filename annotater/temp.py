from pathlib import Path
import shutil

def create_temp_folder():
    temp = Path("./temp")
    temp.mkdir(mode=0o777, parents=True, exist_ok=True)


def cleanup_temp_folder():
    shutil.rmtree("./temp")