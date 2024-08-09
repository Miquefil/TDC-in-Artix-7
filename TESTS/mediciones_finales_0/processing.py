import matplotlib.pyplot as plt
import numpy as np
import os

os.chdir('./TESTS/Mediciones finales/')
PATH_FILE = "data.txt"
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
                binary_coarse       = f'{byte4:08b}' + f'{byte3:08b}'
                binary_byte1_and_2  = f'{byte2:08b}' + f'{byte1:08b}'
                binary_byte2_and_3  = f'{byte3:08b}' + f'{byte2:08b}'

                stop_edge       = int(binary_byte1_and_2[6:]    , 2)
                start_edge      = int(binary_byte2_and_3[4:14]  , 2)
                coarsecounter   = int(binary_coarse[:12]        , 2)

                measurements.append((stop_edge, start_edge, coarsecounter))
    return measurements

meas = parse_data(PATH_FILE)
stop_edges      = [measure[0] for measure in meas]
start_edges     = [measure[1] for measure in meas]
coarse_counters = [measure[2] for measure in meas]

print(coarse_counters)

combined_edges      = np.add(stop_edges, start_edges)
substracted_edges   = np.subtract(stop_edges, start_edges)



# file_stop = 'stop.txt'
# with open(file_stop, 'w') as file:
#         for item in stop_edges:
#             file.write(f"{item}\n")

# print(stop_edges)

# file_start = 'start.txt'
# with open(file_start, 'w') as file:
#         for item in start_edges:
#             file.write(f"{item}\n")


indices = list(range(0, 1024))

# Create histograms
plt.figure(figsize=(12, 6))

# Histogram for stop_edge and start_edge
bines = np.linspace(-0.5, 400.5, 402)
# print(bines)
plt.subplot(3, 2, 1)
plt.hist(stop_edges, bins=bines, alpha=0.5, align='mid', color='blue', label='Combined Edges')
# count, bins = np.histogram(stop_edges, bins=300)
# plt.plot(bins[1:], count, 'o')
plt.title('Histogram of Stop')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.legend()
# print(stop_edges)

#
plt.subplot(3, 2, 2)
plt.hist(start_edges, bins=bines, color='red', align='mid', label='Coarsecounter')
print(start_edges)
# count, bins = np.histogram(start_edges, bins=300)
# plt.plot(bins[1:], count, '*')
plt.title('Histogram of Start')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.legend()


plt.subplot(3, 2, 3)
plt.hist(combined_edges, bins=range(600), color='blue', align='mid', label='Coarsecounter')
# plt.plot(indices, substracted_edges, '*')
# plt.plot(substracted_edges, bins=range(600), color='blue', align='right')
plt.title('Suma de finos')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.legend()


plt.subplot(3, 2, 4)
# plt.plot(indices, combined_edges)
plt.hist(substracted_edges, bins = range(-150, 150), color='blue', align='right')
# plt.hist(coarse_counters, bins=range(max(coarse_counters) + 1), color='green', align='right', label='Coarsecounter')
plt.title('Resta de finos')
plt.xlabel('n° of measurement')
plt.ylabel('bin')
# plt.legend()

plt.subplot(3, 2, 5)
plt.plot(indices, start_edges)
plt.title('Start edge')
plt.xlabel('number of measurement')
plt.ylabel('value')


bines_coarse = np.linspace(-0.5, 100.5, 102)
plt.subplot(3, 2, 6)
# plt.plot(indices, stop_edges, '*')
plt.hist(coarse_counters, bins=bines_coarse, color='green', align='mid', label='Coarsecounter')
# print(coarse_counters)
plt.title('Coarse')
plt.xlabel('value')
plt.ylabel('frequency')

plt.tight_layout()
plt.savefig(TITLE + '.png', format='png')
plt.show()






###SAVING TO FILE
# lineas = []
# with open('resultados.txt', 'w') as file:
#     for i in range(len(coarse_counters)):
#         linea = f'{stop_edges[i]},{start_edges[i]},{coarse_counters[i]}'
#         file.write(linea + '\n')
    

#
# for x in stop_edges:
#     if(x>300):
#         print('Cuidado con Stop!')
# for x in start_edges:
#     if(x>300):
#         print('Cuidado con Start!')



###Diferencias
# plt.figure(figsize=(12, 6))
# plt.plot(indices, substracted_edges, '*')
# plt.ylabel('difference between fine edges')
# plt.xlabel('number of measurement')
# plt.show()