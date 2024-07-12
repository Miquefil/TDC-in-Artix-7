#!/usr/bin/env python
# -*-coding:utf-8 -*-
'''
@File    :   pyserial.py
@Time    :   2024/05/04 15:21:49
@Author  :   Miqueas Filsinger 
@Version :   1.0
@Contact :   miquefil@gmail.com
@Project:       TDC-in-Artix 7
@Description :  Serial console for saving results. 
'''
import serial
import os

os.chdir('./TESTS/TEST_memory/')
def TDCSerial(port, speed, output_file):

    #initializing serial communication
    ser = serial.Serial(port, speed, timeout=1,  bytesize=serial.EIGHTBITS, 
                        parity='N', stopbits=1, xonxoff=0, rtscts=0)
    
    try: 
        ser.open()
    except serial.serialutil.SerialException:
        print("---- PORT ALREADY OPENED")

    Wait        = True
    i           = 0
    NUM_WAITS   = 10
    # Open the output file in append mode to save received data
    with open(output_file, 'w') as file: 
        file.write("UART SPEED: " + str(speed) + '\n')
        try:
            while Wait:
                data = ser.read(ser.in_waiting or 1)
                if not data:
                    i = i+1
                else:
                    i = 0
                if (i >= NUM_WAITS):
                    Wait = False
                    
                hex_data = '\n'.join(['{:02X}'.format(byte) for byte in data])
                file.write(hex_data + '\n')
                print(hex_data)
        except KeyboardInterrupt:
            print("----Closing serial port and saving output file.")
            ser.close()
            file.close()
        except Exception as e:
            print("----Error occurred:", str(e))
            print("----Closing serial port and saving output file.")
            ser.close()
            file.close()
    
    ser.close()

##V2--------------------------------------------
# def TDCSerial(port, speed, output_file):

#     #initializing serial communication
#     ser = serial.Serial(port, speed, timeout=1,  bytesize=serial.EIGHTBITS, 
#                         parity='N', stopbits=1, xonxoff=0, rtscts=0)
    
#     try: 
#         ser.open()
#     except serial.serialutil.SerialException:
#         print("---- PORT ALREADY OPENED")

#     Wait        = True
#     i           = 0
#     NUM_WAITS   = 10
#     # Open the output file in append mode to save received data
#     with open(output_file, 'a') as file: 
#         try:
#             while Wait:
#             data = ser.read(ser.in_waiting or 1)
#             if not data:
#                 i += 1
#             else:
#                 i = 0
#                 hex_data = ''.join(['{:02X}'.format(byte) for byte in data])
#                 file.write(hex_data)
#                 print(hex_data)
#             if i >= NUM_WAITS:
#                 Wait = False
#             if i % 4 == 0 and i != 0:
#                 file.write('\n')
#         except KeyboardInterrupt:
#             print("----Closing serial port and saving output file.")
#             ser.close()
#             file.close()
#         except Exception as e:
#             print("----Error occurred:", str(e))
#             print("----Closing serial port and saving output file.")
#             ser.close()
#             file.close()
    
#     ser.close()

TDCSerial("COM3", 114680, 'data.txt')


