def generate_verilog(num_ff):
    
    verilog_code    = ""
    initial_y       = 111     ##position of the Carry4 chain
    slice_x         = 84        ##position of the Carry4 chain

    # Header
    num_ff_str    = str(num_ff)
    verilog_code += '\n'
    verilog_code += '// THIS MODULE HAS BEEN GENERATED WITH THE HELP OF A SCRIPT\n'
    verilog_code += '\n'
    verilog_code += '\n'
    verilog_code += 'module Start_Stop_FlipFlops( \n'
    verilog_code += '       input  wire        clk,\n'
    verilog_code += '       input  wire        iStartEnable,\n'
    verilog_code += '       input  wire        iStopEnable,\n'
    verilog_code += '       input  wire        iRst,\n'
    verilog_code += f'      input  wire        [{num_ff_str}-1:0] wFirstFF, \n'
    verilog_code += f'      output wire        [{num_ff_str}-1:0] oFFStart, \n'
    verilog_code += f'      output wire        [{num_ff_str}-1:0] oFFStop\n'
    verilog_code += '); \n'
    verilog_code += '\n'
    verilog_code += '\n'


    for i in range(num_ff):
        if i % 4 == 0:
            current_y = initial_y + (i // 4)
        verilog_code += f'(* LOC = "SLICE_X{slice_x+1}Y{current_y}" *)\n'
        verilog_code += f'      FDCE #(.INIT(1\'b0)) Startff{i}(\n'
        verilog_code += f'          .Q          (oFFStart[{i}]),\n'
        verilog_code += f'          .C          (clk),\n'
        verilog_code += f'          .CE         (iStartEnable),\n'
        verilog_code += f'          .CLR        (iRst),\n'
        verilog_code += f'          .D          (wFirstFF[{i}])\n'
        verilog_code += f');\n\n'

    for i in range(num_ff):
        if i % 4 == 0:
            current_y = initial_y + (i // 4)
        verilog_code += f'(* LOC = "SLICE_X{slice_x+3}Y{current_y}" *)\n'
        verilog_code += f'      FDCE #(.INIT(1\'b0)) Stopff{i}(\n'
        verilog_code += f'          .Q          (oFFStop[{i}]),\n'
        verilog_code += f'          .C          (clk),\n'
        verilog_code += f'          .CE         (iStopEnable),\n'
        verilog_code += f'          .CLR        (iRst),\n'
        verilog_code += f'          .D          (wFirstFF[{i}])\n'
        verilog_code += f');\n\n'


    verilog_code += 'endmodule //\n'
    return verilog_code

def save_verilog_file(filename, num_ff):
    verilog_code = generate_verilog(num_ff)
    with open(filename, "w") as file:
        file.write(verilog_code)
    print(f"Verilog code generated and saved to {filename}")

# Usage example
NUM = 280
filename = "Start_Stop_FlipFlops.v"
save_verilog_file(filename, NUM)
