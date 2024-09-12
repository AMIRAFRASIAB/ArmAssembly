; In The Name Of GOD  ;


NUM         RN  R0 ; Numerator
DIV         RN  R1 ; Denominator
QUO         RN  R2 ; Quotient
REM         RN  R3 ; remainder
      
            
            AREA myCode, CODE, READONLY
            EXPORT __test
            
__test      
            MOV   R0, #0
            MOV   R1, #0x64

__loop      CBZ   R1, __exit
            SUB   R1, R1, #1
            ;Do Something
            ADD   R0, R0, #1
            B     __loop
__exit                  
__end            
            B     .
            MOV   PC, LR
            ALIGN
            END
              
              
              
              
              