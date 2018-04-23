"""This needs to be run using Schrodinger's python"""
from __future__ import print_function
import schrodinger.application.jaguar.input as jagInput
import schrodinger.job.jobcontrol as jc
from sys import argv


def mae_to_jaguar(mae_file):
    """Given a maestro inputfile, and a pKa atom (names or integer 1-based indices), make the jaguar input."""
    jag_input = jagInput.read(mae_file)
    return jag_input


if __name__ == "__main__":
    try:
        # first argument is the molecule title
        # a maestro input file titled molecule_title.mae
        molecule_title = argv[1].strip()
        mae_file = "{}.mae".format(molecule_title)
        # Create the jaguar input file structure
        jag_input = mae_to_jaguar(mae_file)
        # The input is saved in the file "molecule_title.in"
        output = "{}.in".format(molecule_title)
        jag_input.saveAs(output)

    except IndexError:
        print("Proper usage: {} molecule_title".format(argv[0]))
