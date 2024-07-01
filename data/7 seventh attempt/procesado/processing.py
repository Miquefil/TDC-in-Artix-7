import matplotlib.pyplot as plt
import numpy as np
import os

os.chdir('./data/7 seventh attempt/procesado')

THREE_MHZ       = "data_3_333_333.txt"
TWELVE          = "data_12.txt"
MAGIC_SEVEN     = "data_7_214_589.txt"
MAGIC           = "data_5_123_456.txt"
ONE             = "data_1.txt"

PATH_FILE = MAGIC
base_name = os.path.basename(PATH_FILE)
TITLE, file_extension = os.path.splitext(base_name)

def parse_data(file_path):
    measurements = []
    with open(file_path, 'r') as file:
        bytes_list = file.readlines()
        for i in range(0, len(bytes_list) - 3, 4):
            if i + 3 < len(bytes_list):  # Ensure there are enough bytes left to read
                byte1 = int(bytes_list[i].strip(), 16)
                byte2 = int(bytes_list[i + 1].strip(), 16)
                byte3 = int(bytes_list[i + 2].strip(), 16)
                byte4 = int(bytes_list[i + 3].strip(), 16)

                # Create a single 32-bit binary string from the bytes
                # binary_string       = f'{byte1:08b}{byte2:08b}{byte3:08b}{byte4:08b}'
                binary_coarse       = f'{byte4:08b}' + f'{byte3:08b}'
                binary_byte1_and_2  = f'{byte2:08b}' + f'{byte1:08b}'
                binary_byte2_and_3  = f'{byte3:08b}' + f'{byte2:08b}'
                # if(i<10):
                #     print(binary_byte1_and_2)
                #     print(binary_byte1_and_2[4:13])
                #     print(binary_byte1_and_2[7:])

                stop_edge       = int(binary_byte1_and_2[6:]       , 2)
                start_edge      = int(binary_byte2_and_3[4:14]  , 2)
                coarsecounter   = int(binary_coarse[:12]        , 2)

                measurements.append((stop_edge, start_edge, coarsecounter))
    return measurements

meas = parse_data(PATH_FILE)
stop_edges = [measure[0] for measure in meas]
print(stop_edges)
start_edges = [measure[1] for measure in meas]
combined_edges = np.add(stop_edges, start_edges)
substracted_edges = np.subtract(stop_edges, start_edges)
print(len(substracted_edges))
coarse_counters = [measure[2] for measure in meas]


indices = list(range(0, 1025))


# Create histograms
plt.figure(figsize=(12, 6))

# Histogram for stop_edge and start_edge
plt.subplot(3, 2, 1)
plt.hist(stop_edges, bins=range(300), alpha=0.5, align='mid', color='blue', label='Combined Edges')

plt.title('Histogram of Stop')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.legend()

#
plt.subplot(3, 2, 2)
# count, bins = np.histogram(start_edges, bins=300, color='red', align='mid', label='Coarsecounter')
count, bins = np.histogram(start_edges, bins=300)
plt.plot(bins[1:], count, '*')
plt.title('Histogram of Start')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.legend()

# Histogram for coarsecounter
plt.subplot(3, 2, 3)
plt.hist(combined_edges, bins=range(600), color='blue', align='right', label='Coarsecounter')
# plt.plot(indices, substracted_edges, '*')
# plt.plot(substracted_edges, bins=range(600), color='blue', align='right')
plt.title('Histogram of Coarsecounter')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.legend()

# Histogram for coarsecounter
plt.subplot(3, 2, 4)
# plt.plot(indices, combined_edges)
plt.hist(substracted_edges, bins = range(-300, 300), color='blue', align='right')
# plt.hist(coarse_counters, bins=range(max(coarse_counters) + 1), color='green', align='right', label='Coarsecounter')
plt.title('Finos combinados')
plt.xlabel('n° of measurement')
plt.ylabel('bin')
# plt.legend()

plt.subplot(3, 2, 5)
plt.plot(indices, start_edges)
plt.title('Start edge')
plt.xlabel('number of measurement')
plt.ylabel('value')


plt.subplot(3, 2, 6)
# plt.plot(indices, stop_edges)
plt.hist(coarse_counters, bins=range(max(coarse_counters) + 1), color='green', align='right', label='Coarsecounter')
plt.title('Stop edge')
plt.xlabel('number of measurement')
plt.ylabel('value')

plt.tight_layout()
plt.savefig(TITLE + '.png', format='png')
plt.show()

#
for x in stop_edges:
    if(x>300):
        print('Cuidado con Stop!')
for x in start_edges:
    if(x>300):
        print('Cuidado con Start!')



###Diferencias
# plt.figure(figsize=(12, 6))
# plt.plot(indices, substracted_edges, '*')
# plt.ylabel('difference between fine edges')
# plt.xlabel('number of measurement')
# plt.show()