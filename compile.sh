#!/bin/bash

if [ $# -ne 1 ]; then
    echo "usage: $0 FILE";
    exit 1;
fi

FILE=$1

nasm -f elf64 $FILE -o "$FILE.o"
objdump -d "$FILE.o" -M intel
echo ""
SHELLCODE=$(objdump -d "$FILE.o" | grep "[0-9a-f]:" | cut -d':' -f2 | cut -d' ' -f 1-7 | tr -s ' ' | tr "\t" ' ' | sed 's/ $//g' | sed 's/ /\\x/g' | paste -d '' -s)

echo "$SHELLCODE"

echo "// gcc -fno-stack-protector -z execstack main.c -o main" > main.c
echo "void main() {" >> main.c
echo "    char shellcode[] = \"$SHELLCODE\";" >> main.c
echo "    ((int(*)())shellcode)();" >> main.c
echo "}" >> main.c

echo ""
echo "Shellcode saved to 'main.c'"

gcc -fno-stack-protector -z execstack main.c -o main

echo ""
echo "Shellcode compiled."
