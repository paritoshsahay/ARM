     AREA     appcode, CODE, READONLY
     export __main	 
	 ENTRY 
__main  function
	          MOV r0 , #10   ;first number
	          MOV r1 , #11    ;second number
              MOV r2 , #9 	  ;third number  			  
              CMP r0 , r1
              MOVHI r1 , r0 
			  CMP r1 , r2
			  MOVHI r2 , r1  ;Largest no. will stored in register R2.
STOP		      B STOP  ; stop program
        endfunc
      end
