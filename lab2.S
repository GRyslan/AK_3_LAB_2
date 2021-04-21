.global lab2
.syntax unified
#define A #5
#define B #3
#define C #4
lab2:
    push {lr}
    mov r0, A
    ADD r0, B //A+B
    mov r1, #2
    SDIV r0, r0, r1 //(A+B)/2
    mov r1, #1
    mov r2, C
    bl fact  //C!
    add r0,r1 
    pop {pc}
    
fact:
    push {lr}
.start:
    mul r1,r2
    SUBS r2, #1
    bne .start
    pop {pc}	 
