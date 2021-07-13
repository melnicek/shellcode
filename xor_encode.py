#!/usr/bin/env python3
import sys

SHELLCODE = input("Shellcode: ")
XOR_BY = 0xaa

result_c = ""
result_nasm = ""

for i in range(0, len(SHELLCODE), 4):
    byte = int(SHELLCODE[i+2:i+4], 16)
    byte = byte ^ XOR_BY
    result_c += "\\x" + hex(byte)[2:]
    result_nasm += hex(byte) + ","

result_nasm = result_nasm[:-1]

print()
print(result_c)
print()
print(result_nasm)
print()
print("Length:", len(SHELLCODE) // 4)
