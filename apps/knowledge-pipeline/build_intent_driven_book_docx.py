from pathlib import Path
import runpy

if __name__ == '__main__':
    script_name = Path(__file__).name
    src_root = Path(__file__).resolve().parent / 'src'
    matches = list(src_root.rglob(script_name))
    if not matches:
        raise FileNotFoundError(f'Could not find {script_name} under {src_root}')
    runpy.run_path(str(matches[0]), run_name='__main__')
