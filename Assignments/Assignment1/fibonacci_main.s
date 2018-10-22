     AREA     appcode, CODE, READONLY
     export __main	 
	 ENTRY 
__main  function
	          MOV r0 , #0  ;first fibonacci number
	          MOV r1 , #1    ; second fibonacci number
              MOV r5 , #6	  ; input for fibonaci series ie the count of position in fibonacci series. 
              MOV r2 , r5	 ; R2 will store output value for the count that is stored in r5 		  
              CMP r2 , #1	;	 
              IT LS
              BLS STOP				  
			  SUB r3 , r2 ,#1      ; loop count is in R3 and it starts from 0.
LOOP              ADD r4 , r1 , r0  ;R4 holds the value of sum of previous two terms 
                  MOV r0 ,r1	; ro and r1 contain the previous two terms always
                  MOV r1 ,r4
                  MOV r2 , r4; latst fibonacci value to be kept in r2
                  SUB r3 ,#1 	; decrement the counter
				  CMP r3 ,#0	; if ctr is 0, stop the execution
                  BNE LOOP					  
STOP		      B STOP  ; stop program
        endfunc
      end 



