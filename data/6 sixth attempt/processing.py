import matplotlib.pyplot as plt
import os

DEBUG_HZ = "C:/Users/mique/Desktop/TDC-in-Artix-7/data/6 sixth attempt/debug_attempt.txt"
DEBUG_LAST_HZ = "C:/Users/mique/Desktop/TDC-in-Artix-7/data/6 sixth attempt/debug_last.txt"
FIVE_MHZ = "C:/Users/mique/Desktop/TDC-in-Artix-7/data/6 sixth attempt/5mhz.txt"

PATH_FILE = DEBUG_LAST_HZ
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
                #     print(byte2 + byte3)
                #     print(binary_byte2_and_3)
                #     print(binary_byte2_and_3[4:14])

                stop_edge       = int(binary_byte1_and_2[6:]   , 2)
                start_edge      = int(binary_byte2_and_3[4:14]   , 2)
                coarsecounter   = int(binary_coarse[:12]        , 2)
                # print(coarsecounter)

                measurements.append((stop_edge, start_edge, coarsecounter))
    return measurements

meas = parse_data(PATH_FILE)
stop_edges = [measure[0] for measure in meas]
start_edges = [measure[1] for measure in meas]
combined_edges = stop_edges + start_edges
coarse_counters = [measure[2] for measure in meas]

# Create histograms
plt.figure(figsize=(12, 6))

# Histogram for stop_edge and start_edge
plt.subplot(1, 2, 1)
plt.hist(combined_edges, bins=range(300), alpha=0.5, align='mid', color='blue', label='Combined Edges')

plt.title('Histogram of Stop Edge and Start Edge')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.legend()

# Histogram for coarsecounter
plt.subplot(1, 2, 2)
plt.hist(coarse_counters, bins=range(max(coarse_counters) + 1), color='green', align='mid', label='Coarsecounter')
plt.title('Histogram of Coarsecounter')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.legend()


plt.tight_layout()
plt.savefig(TITLE + '.png', format='png')
plt.show()
