// gcc -fno-stack-protector -z execstack main.c -o main
void main() {
    char shellcode[] = "\xeb\x0c\x68\x65\x6c\x6c\x6f\x20\x77\x6f\x72\x6c\x64\x0a\x48\x31\xc0\x04\x01\x48\x8d\x35\xe8\xff\xff\xff\x48\x31\xff\x48\x31\xd2\x48\x83\xc2\x0c\x0f\x05\x48\x31\xc0\x48\x83\xc0\x3c\x48\x31\xff\x48\x83\xc7\x2a\x0f\x05";
    ((int(*)())shellcode)();
}
