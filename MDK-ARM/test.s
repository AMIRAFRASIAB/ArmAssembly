; In The Name Of GOD  ;


NUM           RN  R0 ; Numerator
DIV           RN  R1 ; Denominator
QUO           RN  R2 ; Quotient
REM           RN  R3 ; remainder
      
            
            AREA myCode, CODE, READONLY
            EXPORT __test
            
__test      
            LDR   NUM,  =1234
            LDR   QUO,  =0
            LDR   DIV,  =100
            
__start     CMP   NUM,  DIV
            BLO   __end
            SUB   NUM,  NUM,  DIV
            ADD   QUO,  QUO, #1
            B     __start
            
            
            
__end       MOV   REM,  NUM
            BX  LR
            ALIGN
            END
              
              
              
              
              