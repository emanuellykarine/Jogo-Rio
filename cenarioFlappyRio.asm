.text

main: lui $8, 0x1001
      ori $9, $0, 0x62ABD3 #azul 1
      addi $20, $0, 2720
      
flappyCeu: beq $20, $0, fimFlappyCeu
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu
       
fimFlappyCeu: ori $9, $0, 0x71AED0 #azul 2
              addi $20, $0, 1010
              
flappyCeu2: beq $20, $0, fimFlappyCeu2
            sw $9, 0($8)
            addi $8, $8, 4
            addi $20, $20, -1
            j flappyCeu2
       
fimFlappyCeu2: ori $9, $0, 0x79B1D0 #azul 3
              addi $20, $0, 1020

flappyCeu3: beq $20, $0, fimFlappyCeu3
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu3
       
fimFlappyCeu3:  ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4 
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu4: beq $20, $0, fimFlappyCeu4
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu4
           
fimFlappyCeu4: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4 
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu5: beq $20, $0, fimFlappyCeu5
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu5
           
fimFlappyCeu5: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4 
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu6: beq $20, $0, fimFlappyCeu6
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu6
           
fimFlappyCeu6: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4 
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 41
		
flappyCeu7: beq $20, $0, fimFlappyCeu7
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu7
           
fimFlappyCeu7: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu8: beq $20, $0, fimFlappyCeu8
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu8
           
fimFlappyCeu8:  ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu9: beq $20, $0, fimFlappyCeu9
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu9
           
fimFlappyCeu9: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu10: beq $20, $0, fimFlappyCeu10
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu10
           
fimFlappyCeu10: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 42
		
flappyCeu11: beq $20, $0, fimFlappyCeu11
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu11
           
fimFlappyCeu11: ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu12: beq $20, $0, fimFlappyCeu12
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu12
           
fimFlappyCeu12:  ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu13: beq $20, $0, fimFlappyCeu13
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu13
           
fimFlappyCeu13: ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu14: beq $20, $0, fimFlappyCeu14
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu14
           
fimFlappyCeu14: ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 41
		
flappyCeu15: beq $20, $0, fimFlappyCeu15
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu15
           
fimFlappyCeu15: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu16: beq $20, $0, fimFlappyCeu16
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu16
           
fimFlappyCeu16: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu17: beq $20, $0, fimFlappyCeu17
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu17
           
fimFlappyCeu17:  ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu18: beq $20, $0, fimFlappyCeu18
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu18
           
fimFlappyCeu18: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu19: beq $20, $0, fimFlappyCeu19
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu19
           
fimFlappyCeu19: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu20: beq $20, $0, fimFlappyCeu20
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu20
           
fimFlappyCeu20: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 14
		
flappyCeu21: beq $20, $0, fimFlappyCeu21
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu21
           
fimFlappyCeu21: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 15
		
flappyCeu22: beq $20, $0, fimFlappyCeu22
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu22
           
fimFlappyCeu22: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu23: beq $20, $0, fimFlappyCeu23
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu23
           
fimFlappyCeu23: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu24: beq $20, $0, fimFlappyCeu24
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu24
           
fimFlappyCeu24:  ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu25: beq $20, $0, fimFlappyCeu25
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu25
           
fimFlappyCeu25: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 13
		
flappyCeu26: beq $20, $0, fimFlappyCeu26
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu26
           
fimFlappyCeu26: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 13
		
flappyCeu27: beq $20, $0, fimFlappyCeu27
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu27
           
fimFlappyCeu27: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu28: beq $20, $0, fimFlappyCeu28
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu28
           
fimFlappyCeu28: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu29: beq $20, $0, fimFlappyCeu29
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu29
           
fimFlappyCeu29: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu30: beq $20, $0, fimFlappyCeu30
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu30
           
fimFlappyCeu30: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu31: beq $20, $0, fimFlappyCeu31
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu31
           
fimFlappyCeu31: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu32: beq $20, $0, fimFlappyCeu32
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu32
           
fimFlappyCeu32: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu33: beq $20, $0, fimFlappyCeu33
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu33
           
fimFlappyCeu33: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu34: beq $20, $0, fimFlappyCeu34
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu34
           
fimFlappyCeu34: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        sw $9, 0($8)
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu35: beq $20, $0, fimFlappyCeu35
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu35
           
fimFlappyCeu35: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 13
		
flappyCeu36: beq $20, $0, fimFlappyCeu36
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu36
           
fimFlappyCeu36: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu37: beq $20, $0, fimFlappyCeu37
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu37
           
fimFlappyCeu37: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu38: beq $20, $0, fimFlappyCeu38
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu38
           
fimFlappyCeu38: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 9
		 
flappyNuvem: beq $20, $0, fimFlappyNuvem
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem
           
fimFlappyNuvem:	ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu39: beq $20, $0, fimFlappyCeu39
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu39
           
fimFlappyCeu39:	ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 9
		 
flappyNuvem2: beq $20, $0, fimFlappyNuvem2
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem2
           
fimFlappyNuvem2: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu40: beq $20, $0, fimFlappyCeu40
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu40
           
fimFlappyCeu40: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu41: beq $20, $0, fimFlappyCeu41
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu41
           
fimFlappyCeu41: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 8
		 
flappyNuvem3: beq $20, $0, fimFlappyNuvem3
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem3
           
fimFlappyNuvem3: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu42: beq $20, $0, fimFlappyCeu42
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu42
           
fimFlappyCeu42:  ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu43: beq $20, $0, fimFlappyCeu43
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu43
           
fimFlappyCeu43: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 5
		 
flappyNuvem4: beq $20, $0, fimFlappyNuvem4
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem4
           
fimFlappyNuvem4:  ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu44: beq $20, $0, fimFlappyCeu44
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu44
           
fimFlappyCeu44:  ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu45: beq $20, $0, fimFlappyCeu45
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu45
           
fimFlappyCeu45: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu46: beq $20, $0, fimFlappyCeu46
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu46
           
fimFlappyCeu46: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 5
		
flappyCeu47: beq $20, $0, fimFlappyCeu47
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu47
           
fimFlappyCeu47: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 12
		 
flappyNuvem5: beq $20, $0, fimFlappyNuvem5
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem5
           
fimFlappyNuvem5: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu48: beq $20, $0, fimFlappyCeu48
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu48
           
fimFlappyCeu48: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 12
		 
flappyNuvem6: beq $20, $0, fimFlappyNuvem6
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem6
           
fimFlappyNuvem6: ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 13
		 
flappyNuvem7: beq $20, $0, fimFlappyNuvem7
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem7
           
fimFlappyNuvem7: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu49: beq $20, $0, fimFlappyCeu49
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu49
           
fimFlappyCeu49: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu50: beq $20, $0, fimFlappyCeu50
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu50
           
fimFlappyCeu50: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 8
		 
flappyNuvem8: beq $20, $0, fimFlappyNuvem8
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem8
           
fimFlappyNuvem8: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu51: beq $20, $0, fimFlappyCeu51
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu51
           
fimFlappyCeu51: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
                addi $8, $8, 4
                
                ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu52: beq $20, $0, fimFlappyCeu52
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu52
           
fimFlappyCeu52: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
                addi $8, $8, 4
                
                ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu53: beq $20, $0, fimFlappyCeu53
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu53
           
fimFlappyCeu53: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
                addi $8, $8, 4
                sw $9, 0($8)
                addi $8, $8, 4
                sw $9, 0($8)
                addi $8, $8, 4
                
                ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 36
		 
flappyNuvem9: beq $20, $0, fimFlappyNuvem9
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem9
           
fimFlappyNuvem9: ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		addi $8, $8, 4

		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 15
		 
flappyNuvem10: beq $20, $0, fimFlappyNuvem10
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem10
           
fimFlappyNuvem10: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu54: beq $20, $0, fimFlappyCeu54
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu54
           
fimFlappyCeu54: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu55: beq $20, $0, fimFlappyCeu55
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu55
           
fimFlappyCeu55: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 10
		 
flappyNuvem11: beq $20, $0, fimFlappyNuvem11
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem11
           
fimFlappyNuvem11: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu56: beq $20, $0, fimFlappyCeu56
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu56
           
fimFlappyCeu56: ori $9, $0, 0xFBF1CE #branco
                sw $9, 0($8)
                addi $8, $8, 4
                sw $9, 0($8)
                addi $8, $8, 4
                
                ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu57: beq $20, $0, fimFlappyCeu57
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu57
           
fimFlappyCeu57: ori $9, $0, 0xFBF1CE #branco
                sw $9, 0($8)
                addi $8, $8, 4
                
                ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu58: beq $20, $0, fimFlappyCeu58
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu58
           
fimFlappyCeu58: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
                addi $20, $0, 43
                
flappyNuvem12: beq $20, $0, fimFlappyNuvem12
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem12
           
fimFlappyNuvem12:  ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		addi $8, $8, 4  
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
	        
	        ori $9, $0, 0xFBF1CE #branco
                addi $20, $0, 16
                
flappyNuvem13: beq $20, $0, fimFlappyNuvem13
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem13
           
fimFlappyNuvem13: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 5
		
flappyCeu59: beq $20, $0, fimFlappyCeu59
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu59
           
fimFlappyCeu59: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		addi $8, $8, 4  
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 6
		
flappyCeu60: beq $20, $0, fimFlappyCeu60
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu60
           
fimFlappyCeu60: ori $9, $0, 0xFBF1CE #branco
                addi $20, $0, 13
                
flappyNuvem14: beq $20, $0, fimFlappyNuvem14
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem14
           
fimFlappyNuvem14: ori $9, $0, 0x79B1D0 #azul 3
		  sw $9, 0($8)
                  addi $8, $8, 4
                  sw $9, 0($8)
                  addi $8, $8, 4
                  sw $9, 0($8)
                  addi $8, $8, 4
                  sw $9, 0($8)
                  addi $8, $8, 4
                  
                  ori $9, $0, 0xFBF1CE #branco
                  sw $9, 0($8)
                  addi $8, $8, 4
                  sw $9, 0($8)
                  addi $8, $8, 4
                  sw $9, 0($8)
                  addi $8, $8, 4
                  
                  ori $9, $0, 0xD28F42 #marrom 3
		  sw $9, 0($8)
		  addi $8, $8, 4 
		  
		  ori $9, $0, 0xFBF1CE #branco
                  sw $9, 0($8)
                  addi $8, $8, 4 
                  
                  ori $9, $0, 0x79B1D0 #azul 3
		  addi $20, $0, 7
		
flappyCeu61: beq $20, $0, fimFlappyCeu61
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu61
           
fimFlappyCeu61: ori $9, $0, 0xFBF1CE #branco
                sw $9, 0($8)
                addi $8, $8, 4
                
                ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 6
		
flappyCeu62: beq $20, $0, fimFlappyCeu62
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu62
           
fimFlappyCeu62: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		addi $8, $8, 4 
		sw $9, 0($8)
		addi $8, $8, 4 
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 15
		
flappyNuvem15: beq $20, $0, fimFlappyNuvem15
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem15
           
fimFlappyNuvem15: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		addi $8, $8, 4

		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		addi $8, $8, 4

				
		addi $2, $0, 10
                syscall
