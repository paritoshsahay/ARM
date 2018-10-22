     AREA     GCDcode, CODE, READONLY
     export __main	 
	 ENTRY 
__main  function
	          MOV r1 , #23	  ;value of a	
			  MOV r2 , #5     ;value of b
LOOP			  CMP r1 , r2   ;compare 
              IT EQ 			;if register values are equal, the stop.
              BEQ stop_by_looping	
              ITE HI			  ;if r1>r2 then, subtract r2 from r1.
			  SUBHI r1 , r1 , r2 			  
			  SUBLS r2 , r2 , r1	;else subtract r1 from r2.
              B LOOP				;keep looping untill values in both registers are equal.
			  
stop_by_looping B stop_by_looping  ; stop program,answer in R! and R2

        endfunc
      end
