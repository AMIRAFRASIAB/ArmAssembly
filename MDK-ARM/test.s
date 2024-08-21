
            ; In The Name Of GOD  ;
INDEX_INC   EQU 1            
BUF_SIZE    EQU ((__data_e - __data_s) / INDEX_INC)        

MIN         RN  R0
COUNTER     RN  R1
ITEM        RN  R2
POINTER     RN  R3
        
            AREA myData, DATA, READONLY, ALIGN=4
__data_s    DCB -1, -2, -3, -4, 10, -9
__data_e  
            
            
            AREA myCode, CODE, READONLY
            EXPORT __test
            
__test      LDR     COUNTER,  =BUF_SIZE
            CMP     COUNTER,  #0
            BEQ     __end     
            LDR     POINTER,  =__data_s
            LDRSB   MIN,      [POINTER]
            
__again     LDRSB   ITEM,     [POINTER], #1
            CMP     ITEM,     MIN
            BGE     __jump
            MOV     MIN,      ITEM
            
__jump      SUBS    COUNTER,  COUNTER, #1
            BNE     __again

__end       BX  LR
            ALIGN
            END
              
              
              
              
              