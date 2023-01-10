#!/bin/sh

cp x86/insns.dat.86 x86/insns.dat
touch x86/insns.dat
make
./ndisasm >../instr_8086.txt

cp x86/insns.dat.186 x86/insns.dat
touch x86/insns.dat
make
./ndisasm >../instr_80186.txt

cp x86/insns.dat.286 x86/insns.dat
touch x86/insns.dat
make
./ndisasm >../instr_80286.txt

cp x86/insns.dat.386 x86/insns.dat
touch x86/insns.dat
make
./ndisasm -b 32 >../instr_80386.txt

git checkout x86/insns.dat
