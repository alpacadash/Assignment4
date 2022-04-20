"# Assignment4" 

Assignment 4A

insert the following variables in your program:

.data

Uarray WORD 1000h, 2000h, 3000h, 4000h

Sarray SWORD -1, -2, -3, -4

Write instructions that use direct offset addressing to move the four values in Uarray to the EAX, EBX, ECX, and EDX registers. When you follow this with a call DumpRegs statement, the following register values should display:

EAX = 00001000 EBX = 00002000 ECX = 00003000 EDX= 00004000

Next, write instructions that use direct offset addressing to move the four values in Sarray to the EAX, EBX, ECX, and EDX registers. . When you follow this with a call DumpRegs statement, the following register values should display:

EAX = FFFFFFFF EBX = FFFFFFFE ECX = FFFFFFFD EDX= FFFFFFFC

Assignment 4B - p. 130 exercise 5

Use a loop with indirect or indexed addressing to reverse the elements of the integer array in place. Do not copy the elements to any other array. Use the SIZEOF, TYPEOF, and LENGHTOF operators to make the program as flexible as possible if the array size and type should be changed in the future. Optionally, you may display the modified array by calling the DumpMem method from the Irvine32 library. See chapter 5 for details.

Assignment 4C - p. 130 exercise 7

Write a program that implements the following arithmetic expression:

EAX = -val2 + 7 - val3 + val1

Use the following data definitions:

val1 SDWORD 8

val2 SDWORD -15

val3 SDWORD 20

In comments, next to each instruction, write the hexadecimal value of EAX. Insert a

call DumpRegs statement at the end of the program.
