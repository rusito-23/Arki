# utf-8
import re
import argparse

DEFAULT_SOURCE_FILE='main.list'
DEST_FILE='../source/components/imem/imem.sv'

HEXA_REGEX_PATTERN=':[\t][0-9a-fA-F]{8}'

def main(source_file):

    instructions = False
    with open(source_file, 'r') as source_orig:
        source = " ".join([x.strip() for x in source_orig])

        # Find all instructions
        instructions = re.findall(HEXA_REGEX_PATTERN, source)
        instructions = [x.replace(':\t', '') for x in instructions]
        print("INSTRUCTIONS: {}".format(instructions))
        source_orig.close()

    if (instructions):
        if (len(instructions) > 63):
            print("ERROR - Max instructions len: 63")
            exit(1)

        # Read original file
        dest_orig_read = open(DEST_FILE, 'r')
        dest = ''.join(dest_orig_read.readlines())

        # get instruction set
        first = dest.split('{')[0]
        second = dest.split('{')[1]
        third = second.split('}')[1]

        instruction_set = second.split('}')[0]
        instruction_set = instruction_set.split(',')
        instruction_set = [x.strip() for x in instruction_set]

        # Delete old instructions
        for i in range(len(instruction_set)):
            instruction_set[i] = "32'h00"

        # Add new instructions
        for i in range(len(instructions)):
            instruction_set[i] = "32'h{}".format(instructions[i])

        # Re-Build the file
        instruction_set = ',\n\t\t\t\t\t\t\t\t\t\t\t'.join(instruction_set)
        new_file = first + '{' + instruction_set + '}' + third
        dest_orig = open(DEST_FILE, 'w')
        dest_orig.write(new_file)
        dest_orig_read.close()
        dest_orig.close()


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '-f',
        type=str,
        dest='source_file',
        default=DEFAULT_SOURCE_FILE,
        help='Source file for the instruction hexa list'
    )
    args = parser.parse_args()
    main(args.source_file)
