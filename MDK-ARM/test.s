
            ; In The Name Of GOD  ;
BUF_SIZE    EQU ((__data_e - __data_s) / 4)        

COUNTER     RN  R0
MAX         RN  R1
ITEM        RN  R2
POINTER     RN  R3
        
            AREA myData, DATA, READONLY, ALIGN=4
__data_s    DCD 0x15, 0x10, 0x30, 0x20
__data_e  
            
            
            AREA myCode, CODE, READONLY
            EXPORT __test
            
__test      MOV   MAX,     #0       
            LDR   COUNTER, =BUF_SIZE
            CMP   COUNTER, #0
            BEQ   __end
            LDR   POINTER, =__data_s
            
__again     LDR   ITEM, [POINTER], #4
            CMP   MAX, ITEM
            BHS   __index
            MOV   MAX, ITEM
            
__index     SUBS  COUNTER, COUNTER, #1
            BNE   __again
            
__end       BX  LR
            ALIGN
            END