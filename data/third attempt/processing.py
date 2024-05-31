import matplotlib.pyplot as plt
import os

FIVE_MHZ         = "C:/Users/mique/Desktop/TDC-in-Artix-7/data/third attempt/processed/data_5Mhz.txt"
SIX_MHZ           = "C:/Users/mique/Desktop/TDC-in-Artix-7/data/third attempt/processed/data_6Mhz.txt"
TENHALF_MHZ        = "C:/Users/mique/Desktop/TDC-in-Artix-7/data/third attempt/processed/data_10,5 M.txt"
MAGIC_MHZ      = "C:/Users/mique/Desktop/TDC-in-Artix-7/data/third attempt/processed/data_5123456.txt"

PATH_FILE   = MAGIC_MHZw
base_name = os.path.basename(PATH_FILE)
TITLE, file_extension = os.path.splitext(base_name)


def parse_data(file_path):
    measurements = []
    with open(file_path, 'r') as file:
        bytes_list = file.readlines()
        for i in range(0, len(bytes_list)-3, 4):  # Modified loop range
            if i+3 < len(bytes_list):  # Added check to prevent IndexError
                stop_edge       = int(bytes_list[i].strip(), 16)
                start_edge      = int(bytes_list[i+1].strip(), 16)
                coarse_bytes    = bytes_list[i+3].strip() + bytes_list[i+2].strip()
                coarsecounter   = int(coarse_bytes, 16)
                measurements.append((stop_edge, start_edge, coarsecounter))
    return measurements

meas            = parse_data(PATH_FILE)
stop_edges      = [measure[0] for measure in meas]
start_edges     = [measure[1] for measure in meas]
combined_edges  = stop_edges + start_edges
coarse_counters = [measure[2] for measure in meas]


# Create histograms
plt.figure(figsize=(12, 6))

# Histogram for stop_edge and start_edge
plt.subplot(1, 2, 1)
plt.hist(combined_edges, bins=range(256), alpha=0.5, align='right', color='blue', label='Combined Edges')
# plt.hist(stop_edges, bins=range(256), alpha=0.5, color='blue', label='Stop Edge')
# plt.hist(start_edges, bins=range(256), alpha=0.5, color='red', label='Start Edge')

plt.title('Histogram of Stop Edge and Start Edge')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.legend()

# Histogram for coarsecounter
plt.subplot(1, 2, 2)
plt.hist(coarse_counters, bins=range(max(coarse_counters) + 1), color='green', align='right', label='Coarsecounter')
plt.title('Histogram of Coarsecounter')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.legend()

plt.tight_layout()
plt.savefig(TITLE + '.png', format='png')
plt.show()
