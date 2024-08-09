import os

os.chdir('./TESTS/segunda ultima/356 elementos')

def combine_files(output_file, prefix='data_Y110_356e_v', count=10):
    with open(output_file, 'w') as outfile:
        for i in range(1, count + 1):
            input_file = f"{prefix}{i}.txt"
            if os.path.exists(input_file):
                with open(input_file, 'r') as infile:
                    outfile.writelines(infile.readlines())
                    outfile.write('\n')  # Ensure newline between files
            else:
                print(f"File {input_file} does not exist.")

output_file = 'combined_data.txt'
combine_files(output_file)
print(f"Data combined into {output_file}")
