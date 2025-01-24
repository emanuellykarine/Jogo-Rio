.text
#Parte 4 - Etapa 3 - Flappy Bird
#Nome dos laços: flappyCeu, fimFlappyCeu, flappyNuvem, fimFlappyNuvem, flappyMontlado, fimFlappyMontlado, flappyAreia, fimflappyArea
#Registradores usados: $8 (endereço de memória), $9 (cores), $10 (letra v), $11 (cores passáro), $12 (endereço temporário), $13 (valor da diferença entre endereços), $14(cor do passáro), $15 (cor da colisão), $16 (timer), $17 (cor do passáro), $18 (cor do passáro), $19 (cor do passáro), $20 (contador), $21 (endereço do teclado), $22 (estado do teclado), $29 (timer)
#Cores: Azul 1: 0x62ABD3 - Azul 2: 0x71AED0 - Azul 3: 0x79B1D0 - Verde 1: 0x398426 - Verde 2: 0x92D027 - Verde 3: 0x77BE68 - Verde 4: 0x67B72C - Verde 5: 0x307C71 - Branco: 0xFBF1CE
#Marrom 1: 0xAF5F24 - Marrom 2: 0xDF9E44 - Marrom 3: 0xD28F42 - Areia 1: 0xFEE1A2 - Areia 2: 0xF1BD75 - Areia 3: 0xDF9E44 - Areia 4: 0xD28F42
main: lui $8, 0x1001
      lui $6, 0x1001
      ori $9, $0, 0x62ABD3 #azul 1
      addi $20, $0, 2688
      
flappyCeu: beq $20, $0, fimFlappyCeu
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu
       
fimFlappyCeu: ori $9, $0, 0x71AED0 #azul 2
              addi $20, $0, 1024
              
flappyCeu2: beq $20, $0, fimFlappyCeu2
            sw $9, 0($8)
            sw $9, 32768($8) #cópia do cenário
	    sw $9, 32768($6)
	    addi $6, $6, 4
            addi $8, $8, 4
            addi $20, $20, -1
            j flappyCeu2
       
fimFlappyCeu2: ori $9, $0, 0x79B1D0 #azul 3
              addi $20, $0, 1038

flappyCeu3: beq $20, $0, fimFlappyCeu3
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu3
       
fimFlappyCeu3:  ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu4: beq $20, $0, fimFlappyCeu4
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
	   sw $9, 32768($6)
	  addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu4
           
fimFlappyCeu4: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu5: beq $20, $0, fimFlappyCeu5
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu5
           
fimFlappyCeu5: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu6: beq $20, $0, fimFlappyCeu6
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu6
           
fimFlappyCeu6: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 41
		
flappyCeu7: beq $20, $0, fimFlappyCeu7
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu7
           
fimFlappyCeu7: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu8: beq $20, $0, fimFlappyCeu8
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu8
           
fimFlappyCeu8:  ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu9: beq $20, $0, fimFlappyCeu9
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu9
           
fimFlappyCeu9: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu10: beq $20, $0, fimFlappyCeu10
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu10
           
fimFlappyCeu10: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 42
		
flappyCeu11: beq $20, $0, fimFlappyCeu11
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu11
           
fimFlappyCeu11: ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu12: beq $20, $0, fimFlappyCeu12
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu12
           
fimFlappyCeu12:  ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu13: beq $20, $0, fimFlappyCeu13
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu13
           
fimFlappyCeu13: ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu14: beq $20, $0, fimFlappyCeu14
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu14
           
fimFlappyCeu14: ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 41
		
flappyCeu15: beq $20, $0, fimFlappyCeu15
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu15
           
fimFlappyCeu15: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu16: beq $20, $0, fimFlappyCeu16
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu16
           
fimFlappyCeu16: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu17: beq $20, $0, fimFlappyCeu17
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu17
           
fimFlappyCeu17:  ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu18: beq $20, $0, fimFlappyCeu18
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu18
           
fimFlappyCeu18: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu19: beq $20, $0, fimFlappyCeu19
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu19
           
fimFlappyCeu19: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu20: beq $20, $0, fimFlappyCeu20
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu20
           
fimFlappyCeu20: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 14
		
flappyCeu21: beq $20, $0, fimFlappyCeu21
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu21
           
fimFlappyCeu21: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 15
		
flappyCeu22: beq $20, $0, fimFlappyCeu22
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu22
           
fimFlappyCeu22: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu23: beq $20, $0, fimFlappyCeu23
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu23
           
fimFlappyCeu23: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu24: beq $20, $0, fimFlappyCeu24
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu24
           
fimFlappyCeu24:  ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu25: beq $20, $0, fimFlappyCeu25
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu25
           
fimFlappyCeu25: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 13
		
flappyCeu26: beq $20, $0, fimFlappyCeu26
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu26
           
fimFlappyCeu26: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 13
		
flappyCeu27: beq $20, $0, fimFlappyCeu27
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu27
           
fimFlappyCeu27: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu28: beq $20, $0, fimFlappyCeu28
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu28
           
fimFlappyCeu28: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu29: beq $20, $0, fimFlappyCeu29
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu29
           
fimFlappyCeu29: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu30: beq $20, $0, fimFlappyCeu30
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu30
           
fimFlappyCeu30: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu31: beq $20, $0, fimFlappyCeu31
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu31
           
fimFlappyCeu31: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu32: beq $20, $0, fimFlappyCeu32
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu32
           
fimFlappyCeu32: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu33: beq $20, $0, fimFlappyCeu33
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu33
           
fimFlappyCeu33: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu34: beq $20, $0, fimFlappyCeu34
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu34
           
fimFlappyCeu34: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #cópia do cenário
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu35: beq $20, $0, fimFlappyCeu35
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu35
           
fimFlappyCeu35: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 13
		
flappyCeu36: beq $20, $0, fimFlappyCeu36
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu36
           
fimFlappyCeu36: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu37: beq $20, $0, fimFlappyCeu37
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu37
           
fimFlappyCeu37: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu38: beq $20, $0, fimFlappyCeu38
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu38
           
fimFlappyCeu38: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 9
		 
flappyNuvem: beq $20, $0, fimFlappyNuvem
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem
           
fimFlappyNuvem:	ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu39: beq $20, $0, fimFlappyCeu39
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu39
           
fimFlappyCeu39:	ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 9
		 
flappyNuvem2: beq $20, $0, fimFlappyNuvem2
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem2
           
fimFlappyNuvem2: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu40: beq $20, $0, fimFlappyCeu40
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu40
           
fimFlappyCeu40: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu41: beq $20, $0, fimFlappyCeu41
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu41
           
fimFlappyCeu41: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 8
		 
flappyNuvem3: beq $20, $0, fimFlappyNuvem3
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem3
           
fimFlappyNuvem3: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu42: beq $20, $0, fimFlappyCeu42
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu42
           
fimFlappyCeu42:  ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu43: beq $20, $0, fimFlappyCeu43
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu43
           
fimFlappyCeu43: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 5
		 
flappyNuvem4: beq $20, $0, fimFlappyNuvem4
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem4
           
fimFlappyNuvem4:  ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu44: beq $20, $0, fimFlappyCeu44
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu44
           
fimFlappyCeu44:  ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu45: beq $20, $0, fimFlappyCeu45
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu45
           
fimFlappyCeu45: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu46: beq $20, $0, fimFlappyCeu46
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu46
           
fimFlappyCeu46: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 5
		
flappyCeu47: beq $20, $0, fimFlappyCeu47
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu47
           
fimFlappyCeu47: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 12
		 
flappyNuvem5: beq $20, $0, fimFlappyNuvem5
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem5
           
fimFlappyNuvem5: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu48: beq $20, $0, fimFlappyCeu48
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu48
           
fimFlappyCeu48: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 12
		 
flappyNuvem6: beq $20, $0, fimFlappyNuvem6
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem6
           
fimFlappyNuvem6: ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 13
		 
flappyNuvem7: beq $20, $0, fimFlappyNuvem7
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem7
           
fimFlappyNuvem7: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu49: beq $20, $0, fimFlappyCeu49
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu49
           
fimFlappyCeu49: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu50: beq $20, $0, fimFlappyCeu50
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu50
           
fimFlappyCeu50: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 8
		 
flappyNuvem8: beq $20, $0, fimFlappyNuvem8
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem8
           
fimFlappyNuvem8: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu51: beq $20, $0, fimFlappyCeu51
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu51
           
fimFlappyCeu51: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu52: beq $20, $0, fimFlappyCeu52
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu52
           
fimFlappyCeu52: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu53: beq $20, $0, fimFlappyCeu53
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu53
           
fimFlappyCeu53: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
                addi $8, $8, 4
                sw $9, 0($8)
                sw $9, 32768($8) #cópia do cenário
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                sw $9, 0($8)
                sw $9, 32768($8) #cópia do cenário
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 36
		 
flappyNuvem9: beq $20, $0, fimFlappyNuvem9
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem9
           
fimFlappyNuvem9: ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 15
		 
flappyNuvem10: beq $20, $0, fimFlappyNuvem10
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem10
           
fimFlappyNuvem10: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu54: beq $20, $0, fimFlappyCeu54
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu54
           
fimFlappyCeu54: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu55: beq $20, $0, fimFlappyCeu55
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu55
           
fimFlappyCeu55: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 10
		 
flappyNuvem11: beq $20, $0, fimFlappyNuvem11
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem11
           
fimFlappyNuvem11: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu56: beq $20, $0, fimFlappyCeu56
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu56
           
fimFlappyCeu56: ori $9, $0, 0xFBF1CE #branco
                sw $9, 0($8)
                sw $9, 32768($8) #cópia do cenário
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                sw $9, 0($8)
                sw $9, 32768($8) #cópia do cenário
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu57: beq $20, $0, fimFlappyCeu57
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu57
           
fimFlappyCeu57: ori $9, $0, 0xFBF1CE #branco
                sw $9, 0($8)
                sw $9, 32768($8) #cópia do cenário
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu58: beq $20, $0, fimFlappyCeu58
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu58
           
fimFlappyCeu58: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
                addi $20, $0, 43
                
flappyNuvem12: beq $20, $0, fimFlappyNuvem12
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem12
           
fimFlappyNuvem12:  ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4  
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
	        
	        ori $9, $0, 0xFBF1CE #branco
                addi $20, $0, 16
                
flappyNuvem13: beq $20, $0, fimFlappyNuvem13
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem13
           
fimFlappyNuvem13: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 5
		
flappyCeu59: beq $20, $0, fimFlappyCeu59
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu59
           
fimFlappyCeu59: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4  
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 6
		
flappyCeu60: beq $20, $0, fimFlappyCeu60
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu60
           
fimFlappyCeu60: ori $9, $0, 0xFBF1CE #branco
                addi $20, $0, 13
                
flappyNuvem14: beq $20, $0, fimFlappyNuvem14
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem14
           
fimFlappyNuvem14: ori $9, $0, 0x79B1D0 #azul 3
		  sw $9, 0($8)
		  sw $9, 32768($8) #cópia do cenário
		  sw $9, 32768($6)
		  addi $6, $6, 4
                  addi $8, $8, 4
                  sw $9, 0($8)
                  sw $9, 32768($8) #cópia do cenário
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  sw $9, 0($8)
                  sw $9, 32768($8) #cópia do cenário
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  sw $9, 0($8)
                  sw $9, 32768($8) #cópia do cenário
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  
                  ori $9, $0, 0xFBF1CE #branco
                  sw $9, 0($8)
                  sw $9, 32768($8) #cópia do cenário
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  sw $9, 0($8)
                  sw $9, 32768($8) #cópia do cenário
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  sw $9, 0($8)
                  sw $9, 32768($8) #cópia do cenário
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  
                  ori $9, $0, 0xD28F42 #marrom 3
		  sw $9, 0($8)
		  sw $9, 32768($8) #cópia do cenário
		  sw $9, 32768($6)
		  addi $6, $6, 4
		  addi $8, $8, 4 
		  
		  ori $9, $0, 0xFBF1CE #branco
                  sw $9, 0($8)
                  sw $9, 32768($8) #cópia do cenário
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4 
                  
                  ori $9, $0, 0x79B1D0 #azul 3
		  addi $20, $0, 7
		
flappyCeu61: beq $20, $0, fimFlappyCeu61
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu61
           
fimFlappyCeu61: ori $9, $0, 0xFBF1CE #branco
                sw $9, 0($8)
                sw $9, 32768($8) #cópia do cenário
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 6
		
flappyCeu62: beq $20, $0, fimFlappyCeu62
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu62
           
fimFlappyCeu62: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 15
		
flappyNuvem15: beq $20, $0, fimFlappyNuvem15
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem15
           
fimFlappyNuvem15: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 26
		
flappyNuvem16: beq $20, $0, fimFlappyNuvem16
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem16

fimFlappyNuvem16: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 15
		
flappyNuvem17: beq $20, $0, fimFlappyNuvem17
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem17

fimFlappyNuvem17: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 16

flappyNuvem18: beq $20, $0, fimFlappyNuvem18
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem18

fimFlappyNuvem18: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 6	
		
flappyMontlado51:beq $20, $0, fimFlappyMontlado51
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado51
	
fimFlappyMontlado51: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 7
  		     
flappyMontlado52: beq $20, $0, fimflappyMontlado52
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado52

fimflappyMontlado52: ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 16

flappyNuvem19: beq $20, $0, fimFlappyNuvem19
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem19

fimFlappyNuvem19:ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 24

flappyNuvem20: beq $20, $0, fimFlappyNuvem20
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem20

fimFlappyNuvem20: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 13

flappyNuvem21: beq $20, $0, fimFlappyNuvem21
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem21

fimFlappyNuvem21: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 16

flappyNuvem22: beq $20, $0, fimFlappyNuvem22
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem22

fimFlappyNuvem22: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado511:beq $20, $0, fimFlappyMontlado511
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado511
	
fimFlappyMontlado511: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 8
  		     
flappyMontlado521: beq $20, $0, fimflappyMontlado521
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado521

fimflappyMontlado521: ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 15

flappyNuvem23: beq $20, $0, fimFlappyNuvem23
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem23

fimFlappyNuvem23: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 22

flappyNuvem24: beq $20, $0, fimFlappyNuvem24
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem24

fimFlappyNuvem24: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 11

flappyNuvem25: beq $20, $0, fimFlappyNuvem25
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem25

fimFlappyNuvem25: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 18

flappyNuvem26: beq $20, $0, fimFlappyNuvem26
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem26

fimFlappyNuvem26: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 8
		
flappyMontlado512:beq $20, $0, fimFlappyMontlado512
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado512
	
fimFlappyMontlado512: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 9
  		     
flappyMontlado522: beq $20, $0, fimflappyMontlado522
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado522

fimflappyMontlado522: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 14

flappyNuvem27: beq $20, $0, fimFlappyNuvem27
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem27

fimFlappyNuvem27: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 13

flappyNuvem28: beq $20, $0, fimFlappyNuvem28
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem28

fimFlappyNuvem28: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 9

flappyNuvem29: beq $20, $0, fimFlappyNuvem29
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem29

fimFlappyNuvem29: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 17

flappyNuvem30: beq $20, $0, fimFlappyNuvem30
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem30

fimFlappyNuvem30: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 9
		
		
flappyMontlado513:beq $20, $0, fimFlappyMontlado513
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado513
	
fimFlappyMontlado513: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 10
  		     
flappyMontlado523: beq $20, $0, fimflappyMontlado523
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado523

fimflappyMontlado523: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 13

flappyNuvem31: beq $20, $0, fimFlappyNuvem31
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem31

fimFlappyNuvem31: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 11

flappyNuvem32: beq $20, $0, fimFlappyNuvem32
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem32

fimFlappyNuvem32: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 7

flappyNuvem33: beq $20, $0, fimFlappyNuvem33
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem33

fimFlappyNuvem33: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 16

flappyNuvem34: beq $20, $0, fimFlappyNuvem34
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem34

fimFlappyNuvem34: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
				
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 9
		
flappyMontlado514:beq $20, $0, fimFlappyMontlado514
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado514
	
fimFlappyMontlado514: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 11
  		     
flappyMontlado524: beq $20, $0, fimflappyMontlado524
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado524

fimflappyMontlado524: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 12

flappyNuvem35: beq $20, $0, fimFlappyNuvem35
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem35

fimFlappyNuvem35: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
				
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 9

flappyNuvem36: beq $20, $0, fimFlappyNuvem36
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem36

fimFlappyNuvem36: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
				
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 7

flappyNuvem37: beq $20, $0, fimFlappyNuvem37
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem37

fimFlappyNuvem37: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 5

flappyNuvem38: beq $20, $0, fimFlappyNuvem38
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem38

fimFlappyNuvem38: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 8
		
flappyMontlado515:beq $20, $0, fimFlappyMontlado515
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado515
	
fimFlappyMontlado515: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 12
  		     
flappyMontlado525: beq $20, $0, fimflappyMontlado525
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado525

fimflappyMontlado525: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 7

flappyNuvem39: beq $20, $0, fimFlappyNuvem39
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem39

fimFlappyNuvem39: ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 5
		
flappyMontlado71:beq $20, $0, fimFlappyMontlado71
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado71
	
fimFlappyMontlado71: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 9
  		     
flappyMontlado72:beq $20, $0, fimflappyMontlado72
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado72

fimflappyMontlado72: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 7

flappyNuvem40: beq $20, $0, fimFlappyNuvem40
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem40

fimFlappyNuvem40: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 9
		
flappyMontlado31:beq $20, $0, fimFlappyMontlado31
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado31
	
fimFlappyMontlado31: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado41:beq $20, $0, fimFlappyMontlado41
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado41
	
fimFlappyMontlado41: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado516:beq $20, $0, fimFlappyMontlado516
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado516
	
fimFlappyMontlado516: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 12
  		     
flappyMontlado526: beq $20, $0, fimflappyMontlado526
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado526

fimflappyMontlado526: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 6
		
flappyMontlado711:beq $20, $0, fimFlappyMontlado711
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado711
	
fimFlappyMontlado711: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 10
  		     
flappyMontlado721:beq $20, $0, fimflappyMontlado721
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado721

fimflappyMontlado721: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		addi $20, $0, 7
		
flappyMontlado21:beq $20, $0, fimFlappyMontlado21
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado21
	
fimFlappyMontlado21:  ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 10
		
flappyMontlado311:beq $20, $0, fimFlappyMontlado311
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado311
	
fimFlappyMontlado311: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 8
		
flappyMontlado411:beq $20, $0, fimFlappyMontlado411
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado411
	
fimFlappyMontlado411: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 6
		
flappyMontlado517:beq $20, $0, fimFlappyMontlado517
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado517
	
fimFlappyMontlado517: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 12
  		     
flappyMontlado527: beq $20, $0, fimflappyMontlado527
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado527

fimflappyMontlado527: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado712:beq $20, $0, fimFlappyMontlado712
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado712
	
fimFlappyMontlado712: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 11
  		     
flappyMontlado722:beq $20, $0, fimflappyMontlado722
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado722

fimflappyMontlado722: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado11:beq $20, $0, fimFlappyMontlado11
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado11
	
fimFlappyMontlado11: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 5
  		     
flappyMontlado12: beq $20, $0, fimflappyMontlado12
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado12

fimflappyMontlado12: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		addi $20, $0, 7
		
flappyMontlado211:beq $20, $0, fimFlappyMontlado211
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado211
	
fimFlappyMontlado211: ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 11
		
flappyMontlado312:beq $20, $0, fimFlappyMontlado312
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado312
	
fimFlappyMontlado312: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 8
		
flappyMontlado412:beq $20, $0, fimFlappyMontlado412
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado412
	
fimFlappyMontlado412: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		addi $20, $0, 6
		
flappyMontlado62:beq $20, $0, fimFlappyMontlado62
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado62
	
fimFlappyMontlado62: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
  		addi $20, $0, 12
  		     
flappyMontlado528: beq $20, $0, fimflappyMontlado528
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado528

fimflappyMontlado528: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		 
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado713:beq $20, $0, fimFlappyMontlado713
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado713
	
fimFlappyMontlado713: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 13
  		     
flappyMontlado723:beq $20, $0, fimflappyMontlado723
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado723

fimflappyMontlado723: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 9
		
flappyMontlado111:beq $20, $0, fimFlappyMontlado111
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado111
	
fimFlappyMontlado111: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 5
  		     
flappyMontlado121: beq $20, $0, fimflappyMontlado121
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado121

fimflappyMontlado121: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		addi $20, $0, 6
		
flappyMontlado212:beq $20, $0, fimFlappyMontlado212
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado212
	
fimFlappyMontlado212: ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 13
		
flappyMontlado313:beq $20, $0, fimFlappyMontlado313
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado313
	
fimFlappyMontlado313: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		addi $20, $0, 7
		
flappyMontlado621:beq $20, $0, fimFlappyMontlado621
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado621
	
fimFlappyMontlado621: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
  		addi $20, $0, 11
  		     
flappyMontlado529: beq $20, $0, fimflappyMontlado529
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado529

fimflappyMontlado529: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #cópia do cenário
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado714:beq $20, $0, fimFlappyMontlado714
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado714
	
fimFlappyMontlado714: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 14
  		     
flappyMontlado724:beq $20, $0, fimflappyMontlado724
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado724

fimflappyMontlado724: ori $9, $0, 0xFEE1A2 #areia 1
		      addi $20, $0, 128
  		     
flappyAreia1:beq $20, $0, fimflappyAreia1
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyAreia1

fimflappyAreia1: ori $9, $0, 0xF1BD75 #areia 2
		 addi $20, $0, 256
  		     
flappyAreia2:beq $20, $0, fimflappyAreia2
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyAreia2

fimflappyAreia2: ori $9, $0, 0xDF9E44 #areia 3
		 addi $20, $0, 256
  		     
flappyAreia3:beq $20, $0, fimflappyAreia3
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyAreia3

fimflappyAreia3: ori $9, $0, 0xD28F42 #areia 4
		 addi $20, $0, 256
  		     
flappyAreia4:beq $20, $0, fimflappyAreia4
           sw $9, 0($8)
           sw $9, 32768($8) #cópia do cenário
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyAreia4

fimflappyAreia4: 
	         lui $8, 0x1001 #reg do passáro com o endereço inicial
	         addi $8, $8, 12380 # mover o passáro pro meio da tela
	 	 
	 	 lui $6, 0x1001 #endereço do obstaculo
	       	 addi $6, $6, 224  		
		 
		 addi $13, $0, 512 #valor de diferença
		 
		 lui $21, 0xffff #teclado
		 addi $10, $0, 'w' #tecla pra levantar o passáro
		 
		 ori $15, $0, 0xFEE1A2 #cor da areia para colisão
		 ori $9, $0, 0xAF5F24 #cor do obstaculo 
		 
		 lui $24, 0x1001 #endereço de colisão do obstaculo
		 
		 addi $26, $0, 11 #quantidade de obstaculos gerados
		 
		 jal flappyRandomico
flappyCaindo:  beq $26, $0, flappyWin #se gerar 10 obstaculos o blue ganha

		#desenho do passáro
	       jal desenhoFlappy
	       
	       jal flappyObstaculoTopo
	       
	       jal timerFlappy
	       jal timerFlappyObstaculo
	       
	       #cópia e print do cenário
	       jal copiaFundoFlappy
	       
	       #addi $8, $8, 4 #move o blue pra frente  
	       beq $6, $24, flappyDistanciaObstaculos #se chegar em certa posição gera outro obstaculo
	       
	       beq $12, $15, fimDesenhoFlappy #se a cópia do cenario naquela posição for da cor da areia ele finaliza 
	       
	       lw $27, 20($8)
	       beq $27, $9, fimDesenhoFlappy #se o endereço do blue a frente for da cor do obstaculo ele perde
	       
	       lw $27, 3072($8)
	       beq $27, $9, fimDesenhoFlappy #se o endereço do blue em baixo for da cor do obstaculo ele perde
	       
	       addi $27, $8, -3072
	       beq $27, $6, fimDesenhoFlappy #se o blue sair da tela e tiver passando um obstaculo ele morre
	       
	       
	       #------------------------
	     
	       add $8, $8, $13 #diferença entre os endereços do passaro
	       add $6, $6, -4 #diferença entre os endereços do obstaculo
	       
	       
	       lw $22, 0($21) #estado do teclado
	       beq $22, $0, continuacaoFlappy
	       lw $22, 4($21)
	       beq $22, $10, flappyVoar
	       
	       j continuacaoFlappy

flappyVoar: addi $13, $0, -1536 # voltar o passáro três endereços

	     add $8, $8, $13 #diminui do endereço
	     
	     #desenho do passáro
	     jal desenhoFlappy

	     #cópia e print do cenário
	     jal copiaFundoFlappy
	     
	     #------------------
	     addi $13, $0, 512 #volta a somar o endereço
	     j continuacaoFlappy

continuacaoFlappy: j flappyCaindo

flappyWin: addi $26, $0, 30 #movimntação do blue pro meio da tela
apagarFlappyObstaculos: beq $23, $20, copiaApagarFlappyObstaculos
			 lw $7, 32768($6)
 			 sw $7, 0($6)
 			 lw $7, 32772($6)
 			 sw $7, 4($6)
 			 lw $7, 32776($6)
 			 sw $7, 8($6)
			 lw $7, 32780($6)
 			 sw $7, 12($6)
 			 lw $7, 32784($6)
 			 sw $7, 16($6)
 			 
 			 lw $7, 33020($6)
 			 sw $7, 252($6)
 			 lw $7, 33024($6)
 			 sw $7, 256($6)
 			 lw $7, 33028($6)
 			 sw $7, 260($6)
			 lw $7, 33032($6)
 			 sw $7, 264($6)
 			 lw $7, 33036($6)
 			 sw $7, 268($6)
 			 
 			 addi $6, $6, 512 #diferença entre os endereços
 			 addi $20, $20, 1 #quantidade de vezes que vai desenhar
 			  
 			 j apagarFlappyObstaculos
 			
copiaApagarFlappyObstaculos:  addi $6, $6, 6144 #diferença entre os obstaculos
			      addi $20, $0, 0
			     		
copiaApagarFlappyObstaculosInferior: beq $25, $20, forFlappyWin
			        lw $7, 32768($6)
 			 	sw $7, 0($6)
 			 	lw $7, 32772($6)
 			 	sw $7, 4($6)
 			 	lw $7, 32776($6)
 			 	sw $7, 8($6)
			 	lw $7, 32780($6)
 			 	sw $7, 12($6)
 			 	lw $7, 32784($6)
 			 	sw $7, 16($6)
 			        
 			  	lw $7, 33020($6)
 			 	sw $7, 252($6)
 			 	lw $7, 33024($6)
 			 	sw $7, 256($6)
 			 	lw $7, 33028($6)
 			 	sw $7, 260($6)
			 	lw $7, 33032($6)
 			 	sw $7, 264($6)
 			 	lw $7, 33036($6)
 			 	sw $7, 268($6)
 			      	addi $6, $6, 512
 			      	addi $20, $20, 1
 			      	
 			      	j copiaApagarFlappyObstaculosInferior
 			      	
forFlappyWin: beq $26, $0, fimFlappyWin
	      jal desenhoFlappy
	      jal timerFlappy
	      jal copiaFundoFlappy
	      addi $8, $8, 4
	      addi $26, $26, -1
	      j forFlappyWin

fimFlappyWin: jal desenhoFlappy
	      jal desenhoFlappyJade
	      
	      addi $2, $0, 10
	      syscall
	     	      
fimDesenhoFlappy: jal desenhoFlappy #desenhar boneco novamente
	    
	          addi $2, $0, 10
                  syscall
                  
#função gerar valores randomicos
flappyRandomico: addi $5, $0, 35 #limite do intervalo
	       	 addi $2, $0, 42 #gerar randomico
	         syscall
	         
	         add $23, $0, $4
	         addi $23, $23, 10 #pega o randomico e soma com 10 - altura topo do obstaculo
	         
	         addi $25, $0, 45 #maximo que pode ter os obstaculos
	         sub $25, $25, $23 #maximo menor o randomico - altura do obstaculo de baixo
	         
	         addi $26, $26, -1 #contador de obstaculos
	         j flappyObstaculoTopo

#função distancia dos obstaculos
flappyDistanciaObstaculos: beq $23, $20, copiaFlappyEspacoObstaculosDistancia
			 lw $7, 32768($6)
 			 sw $7, 0($6)
 			 lw $7, 32772($6)
 			 sw $7, 4($6)
 			 lw $7, 32776($6)
 			 sw $7, 8($6)
			 lw $7, 32780($6)
 			 sw $7, 12($6)
 			 lw $7, 32784($6)
 			 sw $7, 16($6)
 			 
 			 lw $7, 33020($6)
 			 sw $7, 252($6)
 			 lw $7, 33024($6)
 			 sw $7, 256($6)
 			 lw $7, 33028($6)
 			 sw $7, 260($6)
			 lw $7, 33032($6)
 			 sw $7, 264($6)
 			 lw $7, 33036($6)
 			 sw $7, 268($6)
 			 
 			 addi $6, $6, 512 #diferença entre os endereços
 			 addi $20, $20, 1 #quantidade de vezes que vai desenhar
 			  
 			 j flappyDistanciaObstaculos
 			
copiaFlappyEspacoObstaculosDistancia:  addi $6, $6, 6144 #diferença entre os obstaculos
			      addi $20, $0, 0
			      j copiaFlappyObstaculoInferiorDistancia
			
copiaFlappyObstaculoInferiorDistancia: beq $25, $20, fimCopiaFlappyObstaculosDistancia
			        lw $7, 32768($6)
 			 	sw $7, 0($6)
 			 	lw $7, 32772($6)
 			 	sw $7, 4($6)
 			 	lw $7, 32776($6)
 			 	sw $7, 8($6)
			 	lw $7, 32780($6)
 			 	sw $7, 12($6)
 			 	lw $7, 32784($6)
 			 	sw $7, 16($6)
 			        
 			  	lw $7, 33020($6)
 			 	sw $7, 252($6)
 			 	lw $7, 33024($6)
 			 	sw $7, 256($6)
 			 	lw $7, 33028($6)
 			 	sw $7, 260($6)
			 	lw $7, 33032($6)
 			 	sw $7, 264($6)
 			 	lw $7, 33036($6)
 			 	sw $7, 268($6)
 			      	addi $6, $6, 512
 			      	addi $20, $20, 1
 			      j copiaFlappyObstaculoInferiorDistancia
 			  
fimCopiaFlappyObstaculosDistancia: addi $6, $6, -29184
		          	   addi $20, $0, 0
 			 	   lui $6, 0x1001
			           addi $6, $6, 224
			           j flappyRandomico 
			  	         
#função desenhar obstaculo no topo
flappyObstaculoTopo:beq $23, $20, flappyEspacoObstaculos
		     
		     sw $9, 0($6) 
		     sw $9, 4($6)
		     sw $9, 8($6)
		     sw $9, 12($6)
		     sw $9, 16($6)
		     
		     sw $9, 252($6) 
		     sw $9, 256($6)
		     sw $9, 260($6)
		     sw $9, 264($6)
		     sw $9, 268($6)
		     
		     addi $6, $6, 512
		     addi $20, $20, 1
		     
		     j flappyObstaculoTopo
		     
flappyEspacoObstaculos: addi $6, $6, 6144 #diferença entre os obstaculos
			addi $20, $0, 0
			j flappyObstaculoInferior
			
flappyObstaculoInferior: beq $25, $20, flappyObstaculoFim
			 
			 sw $9, 0($6) 
		     	 sw $9, 4($6)
		     	 sw $9, 8($6)
		     	 sw $9, 12($6)
		     	 sw $9, 16($6)
		         
		         sw $9, 252($6) 
		     	 sw $9, 256($6)
		         sw $9, 260($6)
		         sw $9, 264($6)
		         sw $9, 268($6)
		         
		         addi $6, $6, 512
		         addi $20, $20, 1
		         j flappyObstaculoInferior
		         
flappyObstaculoFim: addi $6, $6, -29184
		    addi $20, $0, 0
		    j copiaFlappyObstaculoTopo


#função desenhar cópia do fundo pros obstaculos
copiaFlappyObstaculoTopo: beq $23, $20, copiaFlappyEspacoObstaculos

 			 lw $7, 32784($6)
 			 sw $7, 16($6)
			 
			 lw $7, 33036($6)
 			 sw $7, 268($6)
 			 
 			 addi $6, $6, 512
 			 addi $20, $20, 1
 			 j copiaFlappyObstaculoTopo
 			
copiaFlappyEspacoObstaculos:  addi $6, $6, 6144 #diferença entre os obstaculos
			      addi $20, $0, 0
			      j copiaFlappyObstaculoInferior
			
copiaFlappyObstaculoInferior: beq $25, $20, fimCopiaFlappyObstaculos

 			      lw $7, 32784($6)
 			      sw $7, 16($6)
 			      
 			      lw $7, 33036($6)
 			      sw $7, 268($6)
 			      addi $6, $6, 512
 			      addi $20, $20, 1
 			      j copiaFlappyObstaculoInferior
 			  
fimCopiaFlappyObstaculos: addi $6, $6, -29184
		          addi $20, $0, 0
		          jr $31
		          	  
#função desenho do passáro
desenhoFlappy: ori $11, $0, 0x546CF0 #azul do passáro
	       ori $14, $0, 0xFCFFFD #branco
	       ori $17, $0, 0x0C0D0D #preto
	       ori $18, $0, 0xB4B4B4 #cinza
	       ori $19, $0, 0x333597 #azul escuro
	       sw $11, 0($8)
	       sw $11, 4($8)
	       sw $11, 8($8)
	       sw $11, 12($8)
	       
	       sw $11, 516($8)
	       sw $14, 520($8)#branco
	       sw $14, 524($8) #branco
	       sw $18, 528($8) #cinza
	       
	       sw $11, 1028($8)
	       sw $14, 1032($8) #branco
	       sw $17, 1036($8) #preto
	       sw $18, 1040($8) #cinza
	       
	       sw $11, 1540($8)
	       sw $14, 1544($8)#branco
	       sw $14, 1548($8) #branco
	       sw $18, 1552($8) #cinza
	       
	       sw $19, 2044($8)#azul escuro
	       sw $19, 2048($8)#azul escuro
	       sw $11, 2052($8)
	       sw $11, 2056($8)
	       sw $11, 2060($8)
	       
	       sw $11, 2552($8)
	       sw $11, 2556($8)
	       sw $11, 2560($8)
	       sw $19, 2564($8) #azul escuro
	       sw $11, 2568($8)
	       sw $11, 2572($8)
	       
	       jr $31
	       
#desenho do fundo com as cópias para a movimentação do passáro 
copiaFundoFlappy: lw $12, 32768($8) #0($8)
	       sw $12, 0($8) 
  
	       lw $12, 32772($8) #4($8)
	       sw $12, 4($8)
	       
	       lw $12, 32776($8) #8($8)
	       sw $12, 8($8) 
	       
	       lw $12, 32780($8) #12($8)
	       sw $12, 12($8)
	        
	       lw $12, 33284($8) #516($8)
	       sw $12, 516($8)
	       
	       lw $12, 33288($8) #520($8)
	       sw $12, 520($8)
	       
	       lw $12, 33292($8) #524($8)
	       sw $12, 524($8)
	       
	       lw $12, 33296($8) #528($8)
	       sw $12, 528($8)
	       
	       lw $12, 33796($8) #1028($8)
	       sw $12, 1028($8)
	       
	       lw $12, 33800($8) #1032($8)
	       sw $12, 1032($8) 
	       
	       lw $12, 33804($8) #1036($8)
	       sw $12, 1036($8)  
	       
	       lw $12, 33808($8) #1040($8)
	       sw $12, 1040($8) 
	       
	       lw $12, 34308($8) #1540($8)
	       sw $12, 1540($8)
	       
	       lw $12, 34312($8) #1544($8)
	       sw $12, 1544($8)
	       
	       lw $12, 34316($8) #1548($8)
	       sw $12, 1548($8) 
	       
	       lw $12, 34320($8) #1552($8)
	       sw $12, 1552($8)
	       
	       lw $12, 34812($8) #2044($8)
	       sw $12, 2044($8)
	       
	       lw $12, 34816($8) #2048($8)
	       sw $12, 2048($8)
	       
	       lw $12, 34820($8) #2052($8)
	       sw $12, 2052($8)
	       
	       lw $12, 34824($8) #2056($8)
	       sw $12, 2056($8)
	       
	       lw $12, 34828($8) #2060($8)
	       sw $12, 2060($8)
	       
	       lw $12, 35320($8) #2552($8)
	       sw $12, 2552($8)
	       
	       lw $12, 35324($8) #2556($8)
	       sw $12, 2556($8)
	       
	       lw $12, 35328($8) #2560($8)
	       sw $12, 2560($8)
	       
	       lw $12, 35332($8) #2564($8)
	       sw $12, 2564($8)
	       
	       lw $12, 35336($8) #2568($8)
	       sw $12, 2568($8)
	       
	       lw $12, 35340($8) #2572($8)
	       sw $12, 2572($8)
	       
	       jr $31

#função desenho do passáro
desenhoFlappyJade: ori $11, $0, 0x4CADCD #azul do passáro
	       ori $14, $0, 0xFCFFFD #branco
	       ori $17, $0, 0x0C0D0D #preto
	       ori $18, $0, 0x919191 #cinza
	       ori $19, $0, 0x3A94C1 #azul escuro
	       ori $9, $0, 0xFFA3B1 #rosa claro
	       ori $10, $0, 0xD15E71 #rosa escuro
	       sw $11, 24($8)
	       sw $11, 28($8)
	       sw $11, 32($8)
	       sw $9, 36($8)
	      
	       
	       sw $18, 532($8)  
	       sw $14, 536($8)#branco
	       sw $14, 540($8)#branco
	       sw $9, 544($8) 
	       sw $10, 548($8)
	       sw $9, 552($8)
	       
	       sw $18, 1044($8)
	       sw $17, 1048($8)
	       sw $14, 1052($8) #branco
	       sw $11, 1056($8) 
	       sw $9, 1060($8) 
	       
	       sw $18, 1556($8)
	       sw $14, 1560($8)#branco
	       sw $14, 1564($8) #branco
	       sw $11, 1568($8) 
	       
	       sw $11, 2072($8)
	       sw $19, 2076($8)
	       sw $19, 2080($8)
	       sw $19, 2084($8)
	       
	       
	       sw $19, 2584($8)
	       sw $11, 2588($8)
	       sw $11, 2592($8)
	       sw $11, 2596($8) #azul escuro
	      
	       
	       jr $31	       	       	       
# função Timer do blue
timerFlappy: sw $16, 0($29)
       	     addi $29, $29, -4
       	     addi $16, $0, 30000
forTimerFlappy:  beq $16, $0, fimTimerFlappy
       		 nop
       		 nop
       		 addi $16, $16, -1      
       		 j forTimerFlappy                  
fimTimerFlappy:  addi $29, $29, 4                                                    
       		 lw $16, 0($29)          
       		 jr $31

# função Timer do obstaculo
timerFlappyObstaculo: sw $16, 0($29)
       	     addi $29, $29, -4
       	     addi $16, $0, 20
forTimerFlappyObstaculo:  beq $16, $0, fimTimerFlappyObstaculo
       		 nop
       		 nop
       		 addi $16, $16, -1      
       		 j forTimerFlappyObstaculo                 
fimTimerFlappyObstaculo:  addi $29, $29, 4                                                    
       		 lw $16, 0($29)          
       		 jr $31