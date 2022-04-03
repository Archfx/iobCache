#Inputs iob_sp_ram
data_width = "DATA_W"
addr_width = 5
ram = "ram"
w_data_name = "din"
w_data_case_name = "addr"
r_data_name = "dout"
r_data_case_name = "addr"

# #Inputs iob_2p_ram
# data_width = "DATA_W"
# addr_width = 5
# ram = "mem"
# w_data_name = "w_data"
# w_data_case_name = "w_addr"
# r_data_name = "r_data"
# r_data_case_name = "r_addr"

# #Inputs for iob_sp_reg_file
# data_width = "DATA_W"
# addr_width = 5
# ram = "reg_file"
# w_data_name = "w_data"
# w_data_case_name = "addr"
# r_data_name = "r_data"
# r_data_case_name = "addr"


# Memory declaration
with open('mem_dec', 'w') as file:
  for x in range(2**addr_width):
    s = "reg ["+data_width+"-1:0] "+ram+"_"+str(x)+";\n"
    file.write(s)
# write
with open('mem_write', 'w') as file:
  file.write("case("+w_data_case_name+")\n")
  for x in range(2**addr_width):
    n = bin(x)[2:].zfill(addr_width)
    # s = "reg ["+data_width+"-1:0] "+ram+"_"+str(x)+";\n"
    s = str(addr_width)+"'b"+str(n)+" : "+ram+"_"+str(x)+" <= "+w_data_name+";\n"
    # s = ram+"_"+str(x)+" <= {DATA_W{1'b0}};\n"
    
    print(s)
    file.write(s)
  file.write("endcase\n")

# Read
with open('mem_read', 'w') as file:
  file.write("case("+r_data_case_name+")\n")
  for x in range(2**addr_width):
    n = bin(x)[2:].zfill(addr_width)
    # s = "reg ["+data_width+"-1:0] "+ram+"_"+str(x)+";\n"
    s = str(addr_width)+"'b"+str(n)+" : "+r_data_name+" <= "+ram+"_"+str(x)+";\n"
    # print(s)
    file.write(s)
  file.write("endcase\n")
