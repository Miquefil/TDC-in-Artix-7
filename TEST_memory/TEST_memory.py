import os
import matplotlib.pyplot as plt

os.chdir('./TEST_memory')

def read_data_txt(filename):
    with open(filename, 'r') as file:
        data = file.readlines()
    
    # Remove newline characters and join into 32-bit values
    data = [line.strip() for line in data]
    num_values = len(data) // 4  # Number of 32-bit values

    values = []
    for i in range(num_values):
        hex_value = ''.join(data[i*4:(i+1)*4][::-1])
        values.append(hex_value)
    
    return values

def read_mem_hex(filename):
    with open(filename, 'r') as file:
        values = [line.strip() for line in file.readlines()]
    return values

def hex_to_decimal(hex_values):
    return [int(value, 16) for value in hex_values]

def plot_data(data1, data2):
    plt.figure(figsize=(10, 5))

    plt.plot(data1, label='data.txt', marker='o')
    plt.plot(data2, label='mem.hex', marker='x')

    plt.xlabel('Index')
    plt.ylabel('Value')
    plt.title('32-bit Hexadecimal Data Comparison')
    plt.legend()
    plt.grid(True)
    plt.tight_layout()
    plt.savefig('mem_test_result.svg', format='svg')
    plt.show()
    

# Read and process data
data_txt_values = read_data_txt('data.txt')
mem_hex_values = read_mem_hex('mem.hex')

# Convert hex values to decimal
data_txt_decimals = hex_to_decimal(data_txt_values)
mem_hex_decimals = hex_to_decimal(mem_hex_values)

# Plot the data
plot_data(data_txt_decimals, mem_hex_decimals)

