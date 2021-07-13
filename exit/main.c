// gcc -fno-stack-protector -z execstack main.c -o main
void main() {
    char shellcode[] = "\x48\x31\xc0\x48\x83\xc0\x3c\x48\x31\xff\x48\x83\xc7\x2a\x0f\x05";
    ((int(*)())shellcode)();
}
