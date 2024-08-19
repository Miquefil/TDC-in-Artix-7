import os

EXACT_PATH = 'C:/Users/mique/Desktop/TDC-in-Artix-7/TESTS/mediciones_finales_5/'

##################################################################
##TODA ESTA PARTE INGRESA EN CADA CARPETA, LEE LOS DATOS Y LOS APPENDEA EN UN ARCHIVO 'resultados_XXX.txt'
os.chdir(EXACT_PATH)
for direccion in os.listdir():      ##devuelve lista de archivos y folders
    if((len(direccion.split('.'))!=2) and (direccion!='calculos')):   #si no es un archivo(si es archivo split separa nombre de archivo y extension)
        os.chdir(EXACT_PATH)
        os.chdir(f'./{direccion}/')
        lineas = []
        for archivo in os.listdir():
            extension_archivo = archivo.split('.')
            nombre_archivo = archivo.split('_')
            if((nombre_archivo[0] != 'resultadosCSV') and (nombre_archivo[0] != 'resultados') 
               and (extension_archivo[0] != 'hist') ):    ## que no appendee desde mismo archivo donde se escriben los resultados
                with open(archivo, 'r') as file:
                    print(nombre_archivo)
                    file_lines = file.readlines() 
                    lineas.extend(file_lines)
        with open(f'resultados_{direccion}.txt', 'w') as file_resultados:
            for l in lineas:
                if(l!='\n'):
                    file_resultados.write(l)
        file_resultados.close()

# ###########################################################################
# ##AHORA PROCESAMOS LOS DATOS Y LOS GUARDAMOS EN OTRO ARCHIVO

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
    file.close()
    return measurements
os.chdir(EXACT_PATH)
for nombre_file in os.listdir():
    if((len(nombre_file.split('.'))!=2) and (nombre_file!='calculos')):       ##si no es un archivo
        print(nombre_file)
        os.chdir(EXACT_PATH)
        os.chdir(f'./{nombre_file}/')
        meas = parse_data(f'resultados_{nombre_file}.txt')
        stop_edges      = [measure[0] for measure in meas]
        start_edges     = [measure[1] for measure in meas]
        coarse_counters = [measure[2] for measure in meas]

        with open(f'resultadosCSV_{nombre_file}.txt', 'w') as file:
            for i in range(len(coarse_counters)):
                linea = f'{stop_edges[i]},{start_edges[i]},{coarse_counters[i]}'
                file.write(linea + '\n')