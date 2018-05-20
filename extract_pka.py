import re
import json
import sys
from typing import Tuple
import numpy as np

# See explanation of regex on https://regex101.com/r/MPAkoh/6
regex = r"^(?P<index>\d{1,}):\s{1,}(?P<description>.*[^\s])\s*\t(?P<pKa>.*)\t(?P<RMSD>.*)\t\s*(?P<Contribution>.*)%$"

def retrieve_pka(file_text:str)-> Tuple[float,float]:
    """Retrieve the weighted pKa and RMSD from Jaguar .out file str."""
    matches = re.finditer(regex, file_text, re.MULTILINE)

    pKa = 0.0
    rmsd = 0.0

    for matchNum, match in enumerate(matches):
        data = match.groupdict()
        weight = float(data['Contribution'])/100.0
        pKa += float(data['pKa']) * weight
        rmsd += float(data['RMSD']) * weight
    return pKa, rmsd


def extract_pka(filename:str):
    """Attempt to extract a pKa from a Jaguar .out file."""
    
    try:
        with open(filename, 'r') as fileobj:
            txt = fileobj.read()
            return retrieve_pka(txt)
    
    except IOError:
        return np.nan, np.nan


if __name__ == '__main__':
    filename: str = sys.argv[1].strip()

    print("pKa {} +/- {}".format(*extract_pka(filename)))

    
    
