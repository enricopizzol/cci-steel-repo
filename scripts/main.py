import csv

CSV_FILENAME = "pads.csv"
INPUT = "input"
OUTPUT = "output"
SIZE = 3
ORIENTATION =4;
TYPE = 5;



def generate_pads():
    with open(CSV_FILENAME) as f:
        reader = csv.reader(f)
        inputs = list(tuple(line) for line in reader)

    file = open("pads_code.txt", "w")
    signals_file_output = open("signals_output.txt", "w")
    signal_file_input = open("signals_input.txt", "w")

    for _input in inputs:
        if _input[2] == INPUT:
            signal_file_input.write("{pin},{pin_I},\n".format(pin=_input[0], pin_I=_input[1]))
            if 1 == int(_input[SIZE]):
                # signal_file_input.write("input {pin},{pin_I};\n".format(pin=_input[0], pin_I=_input[1]))
                file.write("ICP PAD_{pin}_i(.PAD({pin}),.Y({pin_I}));\n".format(pin=_input[0], pin_I=_input[1]))
            if int(_input[SIZE]) > 1:
                for x in range(0, int(_input[SIZE])):
                    file.write("ICP PAD_{pin}{index}_i(.PAD({pin}[{index}]),.Y({pin_I}[{index}]));\n".format(pin=_input[0],
                                                                                                      pin_I=_input[1],
                                                                                                      index=x))
        if _input[2] == OUTPUT:
            signals_file_output.write("{pin},{pin_I},\n".format(pin=_input[0], pin_I=_input[1]))
            if 1 == int(_input[SIZE]):
                # signals_file_output.write("output {pin},{pin_I};\n".format(pin=_input[0], pin_I=_input[1]))
                file.write("BD8P PAD_{pin}_o(.A({pin_I}),.PAD({pin}));\n".format(pin=_input[0], pin_I=_input[1])
                           )
            if int(_input[SIZE]) > 1:
                for x in range(0, int(_input[SIZE])):
                    # signals_file_output.write(
                    #     "output {pin}{index},{pin_I}{index};\n".format(pin=_input[0], pin_I=_input[1], index=x))
                    file.write("BD8P PAD_{pin}{index}_o(.A({pin_I}[{index}]),.PAD({pin}[{index}]));\n".format(pin=_input[0],
                                                                                                       pin_I=_input[1],
                                                                                                       index=x))

    file.close()
    signal_file_input.close()
    signals_file_output.close()


def generate_iopads():
    with open(CSV_FILENAME) as f:
        reader = csv.reader(f)
        inputs = list(tuple(line) for line in reader)

    file = open("iopads.txt", "w")
    for _input in inputs:
        if _input[2] == INPUT:
            if 1 == int(_input[SIZE]):
                file.write("Pad: IOPADS_INST/PAD_{pin} {orientation} {type}\n".format(pin=_input[0], pin_I=_input[1]), orientation= _input[4], type=_input[5])
            if int(_input[SIZE]) > 1:
                for x in range(0, int(_input[SIZE])):
                file.write("Pad: IOPADS_INST/PAD_{pin} {orientation} {type}\n".format(pin=_input[0], pin_I=_input[1]), orientation= _input[4], type=_input[5])
                
               
        if _input[2] == OUTPUT:
            if 1 == int(_input[SIZE]):
                file.write("Pad: IOPADS_INST/PAD_{pin}_o {orientation} {type}\n".format(pin=_input[0], pin_I=_input[1]), orientation= _input[4], type=_input[5])
                          )
            if int(_input[SIZE]) > 1:
                for x in range(0, int(_input[SIZE])):
                    # signals_file_output.write(
                    file.write("Pad: IOPADS_INST/PAD_{pin}{index}_o {orientation} {type}\n".format(pin=_input[0], pin_I=_input[1]), orientation= _input[4], type=_input[5], index=x)
                

if __name__ == '__main__':
    #generate_pads()
    generate_iopads()
