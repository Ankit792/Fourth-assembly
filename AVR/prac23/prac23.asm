.include"m32def.inc"   
.ORG 0    
                LDI R16,HIGH(RAMEND)   
                OUT SPH,R16   
                LDI R16,LOW(RAMEND)   
                OUT SPL,R16   
                LDI R16,0X02 
                SBI DDRC,0   
                CBI DDRC,1;   
                LDI R17,0X00;   
BEGIN:   SBIS PINC,1;   
                JMP NEXT;   
                SBI PORTC,0;   
                OUT TCNT0,R17;   
                CALL DELAY;   
                CBI PORTC,0;   
                OUT TCNT0,R17;   
                CALL DELAY;   
                JMP BEGIN;  
NEXT:    SBI PORTC,0;   
                OUT TCNT0,R17;    
                CALL DELAY;   
                OUT TCNT0,R17;   
                CALL DELAY;   
                OUT TCNT0,R17;   
                CALL DELAY;   
                CBI PORTC,0;   
                OUT TCNT0,R17;   
                CALL DELAY;                   
				JMP BEGIN     
DELAY: LDI R20,0X01;    
               OUT TCCR0,R20;  
AGAIN: IN R20,TIFR   
               SBRS R20,TOV0    
               RJMP AGAIN   
               LDI R20,0X0   
               OUT TCCR0,R20   
               LDI R20,(1<<TOV0)   
               OUT TIFR,R20   
               RET
