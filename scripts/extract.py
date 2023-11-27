import argparse
from pathlib import Path
from bs4 import BeautifulSoup
parser = argparse.ArgumentParser(description='extract passages from ')
parser.add_argument('files', nargs='+')
parsed = parser.parse_args()

app_path = Path('.')

# extract passages from files into JSON
for filename in vars(parsed)['files']:
    file = open(app_path / (filename.removesuffix('.json') + '.json'), mode='rt')
    
    print(file)
    # print(file[0,40])
