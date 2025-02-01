.text
#Parte 1 - Capa 
#Nome dos laços: capaTest, fimPart, fimCapaTest, capaTestAzul, fimAzul, tecladoCapa, voltaTecladoCapa, testTelaPreta, fimTelaPreta
#Registradores usados: $8 (endereço de memória), $9 (cores), $10 (espaço), $20 (contador), $21 (endereço do teclado), $22 (estado do teclado)
main: lui $8, 0x1001
      ori $9, $0, 0xA7E0F0 #azul claro
      addi $20, $0, 1310
     
capaTest: beq $20, $0, fimAzul1
      sw $9, 0($8)
      addi $8, $8, 4
      addi $20, $20, -1
      j capaTest
       
fimAzul1: ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 6 #A
   
capaTest1: beq $20, $0, fimPart1
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j capaTest1

fimPart1: ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 123
     
capaTestAzul2: beq $20, $0, fimAzul2
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul2
       
fimAzul2: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4
          
          ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 3
     
capaTest2: beq $20, $0, fimcapaTest2
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j capaTest2
        
fimcapaTest2: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4
          
          ori $9, $0, 0xA7E0F0 #azul claro
          sw $9, 0($8)               
          addi $8, $8, 4
          
          ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 5 #P
   
capaTest3: beq $20, $0, fimPart3
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j capaTest3
       
fimPart3: ori $9, $0, 0xA7E0F0 #azul claro
	  addi $20, $0, 9 

capaTestAzul3: beq $20, $0, fimAzul3
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul3
           
fimAzul3: ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 5 #R
          
capaTest4: beq $20, $0, fimPart4
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j capaTest4

fimPart4: ori $9, $0, 0xA7E0F0 #azul claro
	  sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 9 #T
          
capaTest5: beq $20, $0, fimPart5
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j capaTest5     
           
fimPart5: ori $9, $0, 0xA7E0F0 #azul claro
	  sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 9 #E                                
          
capaTest6: beq $20, $0, fimPart6
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j capaTest6   
     
fimPart6: ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 83
          
capaTestAzul4: beq $20, $0, fimAzul4
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul4
           
fimAzul4: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4
          
          ori $9, $0, 0xA7E0F0 #azul claro  
          addi $20, $0, 3 #A
          
capaTestAzul5: beq $20, $0, fimAzul5
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul5
           
fimAzul5: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4 
          
          ori $9, $0, 0xA7E0F0 #azul claro
	  sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4 
          
          ori $9, $0, 0xA7E0F0 #azul claro  
          addi $20, $0, 3 #P
          
capaTestAzul6: beq $20, $0, fimAzul6
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul6
           
fimAzul6: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4 
          
          ori $9, $0, 0xA7E0F0 #azul claro
	  sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0x53B7E6 #azul escuro
	  addi $20, $0, 7 #E

capaTest7: beq $20, $0, fimPart7
       sw $9, 0($8)
       addi $8, $8, 4 #E
       addi $20, $20, -1
       j capaTest7
       
fimPart7: ori $9, $0, 0xA7E0F0 #azul claro
	  sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4 #R
          
          ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 3
          
capaTestAzul7: beq $20, $0, fimAzul7
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul7	  
	  
fimAzul7: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 5 #T
          
capaTestAzul8: beq $20, $0, fimAzul8
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul8
           
fimAzul8: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 5 #T
          
capaTestAzul9: beq $20, $0, fimAzul9
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul9
           
fimAzul9: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
	  addi $8, $8, 4 
	  
	  ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 91
          
capaTestAzul10: beq $20, $0, fimAzul10
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul10
	  
fimAzul10: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4 
	   
	  ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 3 #A
          
capaTestAzul11: beq $20, $0, fimAzul11
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul11

fimAzul11: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro    
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 3 #P
             
capaTestAzul12: beq $20, $0, fimAzul12
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul12
           
fimAzul12: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro    
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 7 #E
             
capaTestAzul13: beq $20, $0, fimAzul13
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul13                   
	    
fimAzul13: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 3 #R
           
capaTestAzul14: beq $20, $0, fimAzul14
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j capaTestAzul14
           
fimAzul14: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #T
           
capaTestAzul15: beq $20, $0, fimAzul15
            sw $9, 0($8)
            addi $8, $8, 4
            addi $20, $20, -1
            j capaTestAzul15  
           
fimAzul15: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #T
           
capaTestAzul16: beq $20, $0, fimAzul16
            sw $9, 0($8)
            addi $8, $8, 4
            addi $20, $20, -1
            j capaTestAzul16
           
fimAzul16: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 91
           
capaTestAzul17: beq $20, $0, fimAzul17
            sw $9, 0($8)
            addi $8, $8, 4
            addi $20, $20, -1
            j capaTestAzul17                                                                                                                                                
	
fimAzul17: ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5
           
capaTest8: beq $20, $0, fimPart8
       sw $9, 0($8)
       addi $8, $8, 4 #A
       addi $20, $20, -1
       j capaTest8
       
fimPart8: ori $9, $0, 0xA7E0F0 #azul claro
          sw $9, 0($8)
	  addi $8, $8, 4
	  
          ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 5
           
capaTest9: beq $20, $0, fimPart9
       sw $9, 0($8)
       addi $8, $8, 4 #P
       addi $20, $20, -1
       j capaTest9
       
fimPart9: ori $9, $0, 0xA7E0F0 #azul claro
          sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 7
           
capaTest10: beq $20, $0, fimPart10
        sw $9, 0($8)
        addi $8, $8, 4 #E
        addi $20, $20, -1
        j capaTest10
       
fimPart10:ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 5 
          
capaTest11: beq $20, $0, fimPart11
        sw $9, 0($8)
        addi $8, $8, 4 #R
        addi $20, $20, -1
        j capaTest11
                 
fimPart11: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5
          
capaTest12: beq $20, $0, fimPart12
        sw $9, 0($8)
        addi $8, $8, 4 #R
        addi $20, $20, -1
        j capaTest12
        
fimPart12: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5#T
           
capaTest13: beq $20, $0, fimPart13
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest13
        
fimPart13: ori $9, $0, 0x53B7E6 #azul escuro
	   addi $20, $0, 7#E
	
capaTest14: beq $20, $0, fimPart14
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest14

fimPart14: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 85
           
capaTest15: beq $20, $0, fimPart15
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest15
        
fimPart15: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 3 #A
           
capaTest16: beq $20, $0, fimPart16
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest16
 
fimPart16: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4      
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
	   sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #P
           
capaTest17: beq $20, $0, fimPart17
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest17
        
fimPart17: ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 7 #E
           
capaTest18: beq $20, $0, fimPart18
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest18

fimPart18: ori $9, $0, 0xA7E0F0 #azul claro
	   sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 7 #R

capaTest19: beq $20, $0, fimPart19
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest19
        
fimPart19: ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #T
           
capaTest20: beq $20, $0, fimPart20
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest20
        
fimPart20: ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 91 #E
           
capaTest21: beq $20, $0, fimPart21
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest21
                                
fimPart21: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 3 #A
           
capaTest22: beq $20, $0, fimPart22
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest22
 
fimPart22: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4      
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
	   sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #P
           
capaTest23: beq $20, $0, fimPart23
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest23
        
fimPart23: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #E
           
capaTest24: beq $20, $0, fimPart24
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest24

fimPart24: ori $9, $0, 0xA7E0F0 #azul claro
	   sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #R

capaTest25: beq $20, $0, fimPart25
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest25
        
fimPart25: ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #T
           
capaTest26: beq $20, $0, fimPart26
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest26
        
fimPart26: ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 91 #E
           
capaTest27: beq $20, $0, fimPart27
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest27
        
fimPart27: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 3 #A
           
capaTest28: beq $20, $0, fimPart28
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest28
 
fimPart28: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4      
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
	   sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #P
           
capaTest29: beq $20, $0, fimPart29
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest29
        
fimPart29: ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 7 #E
           
capaTest30: beq $20, $0, fimPart30
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest30

fimPart30: ori $9, $0, 0xA7E0F0 #azul claro
	   sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   sw $9, 0($8)
	   addi $8, $8, 4
	   sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #R

capaTest31: beq $20, $0, fimPart31
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest31
        
fimPart31: ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #T
           
capaTest32: beq $20, $0, fimPart32
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest32
        
fimPart32: ori $9, $0, 0x53B7E6 #azul escuro  
	   addi $20, $0, 9 #E
	
capaTest33: beq $20, $0, fimPart33
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest33
        
fimPart33: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 210
 
capaTest34: beq $20, $0, fimPart34
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest34         
          
fimPart34:ori $9, $0, 0x53B7E6 #azul escuro  
	  addi $20, $0, 49
	  
capaTest35: beq $20, $0, fimPart35
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest35
        
fimPart35: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 79
           
capaTest36: beq $20, $0, fimPart36
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest36
        
fimPart36: ori $9, $0, 0x53B7E6 #azul escuro
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   sw $9, 0($8)
	   addi $8, $8, 4
	   sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #E

capaTest37: beq $20, $0, fimPart37
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest37       
                  
fimPart37: ori $9, $0, 0x53B7E6 #azul escuro
	   addi $20, $0, 9 #S
	   
capaTest38: beq $20, $0, fimPart38
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest38
        
fimPart38: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #P

capaTest39: beq $20, $0, fimPart39
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest39
        
fimPart39: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #A
           
capaTest40: beq $20, $0, fimPart40
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest40
       
fimPart40: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #Ç
           
capaTest41: beq $20, $0, fimPart41
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest41    
                     
fimPart41:ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #O
           
capaTest42: beq $20, $0, fimPart42
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest42   
        
fimPart42: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4  
           sw $9, 0($8)
           addi $8, $8, 4  
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 79
                    
capaTest43: beq $20, $0, fimPart43
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest43            
       
fimPart43: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 8 #E
           
capaTest44: beq $20, $0, fimPart44
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest44     
        
fimPart44: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #S
           
capaTest45: beq $20, $0, fimPart45
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest45  
        
fimPart45: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4   
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
    
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P
      
capaTest46: beq $20, $0, fimPart46
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest46 

fimPart46: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
            
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4   
             
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
capaTest47: beq $20, $0, fimPart47
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest47

fimPart47: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4  
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 7 #Ç

capaTest48: beq $20, $0, fimPart48
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest48  
        
fimPart48: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4  
           
	   ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5 #O
           
capaTest49: beq $20, $0, fimPart49
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest49
        
fimPart49: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 79
           
capaTest50: beq $20, $0, fimPart50
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest50
                                                                                                                                                                                                                                                                                                                                                                   
fimPart50: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 8 #E
           
capaTest51: beq $20, $0, fimPart51
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest51    
        
fimPart51: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 6 #S
                      
capaTest52: beq $20, $0, fimPart52
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest52  

fimPart52: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P
                      
capaTest53: beq $20, $0, fimPart53
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest53
        
fimPart53: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
                      
capaTest54: beq $20, $0, fimPart54
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest54
        
fimPart54: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 6 #Ç
           
capaTest55: beq $20, $0, fimPart55
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest55

fimPart55: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4         
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5 #O
           
capaTest56: beq $20, $0, fimPart56
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest56 
        
fimPart56: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 79
           
capaTest57: beq $20, $0, fimPart57
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest57            
            
fimPart57: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
          
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 7 #E
           
capaTest58: beq $20, $0, fimPart58
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest58         

fimPart58: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #S
           
capaTest59: beq $20, $0, fimPart59
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest59
        
fimPart59: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4  
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #P
           
capaTest60: beq $20, $0, fimPart60
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest60
        
fimPart60: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #A
           
capaTest61: beq $20, $0, fimPart61
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest61  
        
fimPart61: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4  
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro                  
           addi $20, $0, 7 #Ç
           
capaTest62: beq $20, $0, fimPart62
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest62

fimPart62: 
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4         
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5 #O
           
capaTest63: beq $20, $0, fimPart63
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest63 
        
fimPart63: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 79
           
capaTest64: beq $20, $0, fimPart64
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest64
                    
fimPart64: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 13 #E
           
capaTest65: beq $20, $0, fimPart65
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest65   
        
fimPart65: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 6 #S

capaTest66: beq $20, $0, fimPart66
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest66  
        
fimPart66: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P

capaTest67: beq $20, $0, fimPart67
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest67   
                          
fimPart67: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
	   ori $9, $0, 0x53B7E6 #azul escuro                  
           addi $20, $0, 7 #Ç
           
capaTest68: beq $20, $0, fimPart68
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest68

fimPart68: 
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4         
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5 #O
           
capaTest69: beq $20, $0, fimPart69
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest69 
        
fimPart69: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 79
           
capaTest70: beq $20, $0, fimPart70
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest70
                    
fimPart70: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 13 #E
           
capaTest71: beq $20, $0, fimPart71
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest71
        
fimPart71: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 6 #S

capaTest72: beq $20, $0, fimPart72
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest72  
        
fimPart72: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P

capaTest73: beq $20, $0, fimPart73
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest73  
                          
fimPart73: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
	   ori $9, $0, 0x53B7E6 #azul escuro                  
           addi $20, $0, 7 #Ç
           
capaTest74: beq $20, $0, fimPart74
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest74

fimPart74: 
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4         
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5 #O
           
capaTest75: beq $20, $0, fimPart75
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest75 
        
fimPart75: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 79
           
capaTest76: beq $20, $0, fimPart76
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest76
  
fimPart76: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 7 #E

capaTest77: beq $20, $0, fimPart77
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest77           
           
fimPart77: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #S

capaTest78: beq $20, $0, fimPart78
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest78
        
fimPart78: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 6 #P

capaTest79: beq $20, $0, fimPart79
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest79 
                          
fimPart79:
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
	   ori $9, $0, 0x53B7E6 #azul escuro                  
           addi $20, $0, 4 #A
           
capaTest80: beq $20, $0, fimPart80
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest80

fimPart80: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 7 #Ç
           
capaTest81: beq $20, $0, fimPart81
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest81 
           
fimPart81: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 7 #O
           
capaTest82: beq $20, $0, fimPart82
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest82 

fimPart82: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 79
           
capaTest83: beq $20, $0, fimPart83
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest83
        
fimPart83:  ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 35
            
capaTest84: beq $20, $0, fimPart84
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest84

fimPart84: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
            
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 13
            
capaTest85: beq $20, $0, fimPart85
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest85  
        
fimPart85: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 209
           
capaTest86: beq $20, $0, fimPart86
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j capaTest86
        
fimPart86: ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P
           
capaTest87: beq $20, $0, fimPart87
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest87
        
fimPart87: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
capaTest88: beq $20, $0, fimPart88
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest88

fimPart88: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #R
           
capaTest89: beq $20, $0, fimPart89
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest89         
        
fimPart89: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
capaTest90: beq $20, $0, fimPart90
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest90     
   
fimPart90: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4    
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #J
           
capaTest91: beq $20, $0, fimPart91
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest91
        
fimPart91: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #O
           
capaTest92: beq $20, $0, fimPart92
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest92       

fimPart92: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #G
           
capaTest93: beq $20, $0, fimPart93
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest93                
        
fimPart93: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
capaTest94: beq $20, $0, fimPart94
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest94       
        
fimPart94: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #R
           
capaTest95: beq $20, $0, fimPart95
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest95         
        
fimPart95: ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 44

capaTest96: beq $20, $0, fimPart96
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest96 
	   
fimPart96: ori $9, $0, 0x0085BB #azul do blue
           sw $9, 0($8)
           addi $8, $8, 4

           ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 38

capaTest97: beq $20, $0, fimPart97
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest97 
	   
fimPart97: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #P
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4   
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #P
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4   
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #R
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4   
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #R
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4   
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #J 
           sw $9, 0($8)
           addi $8, $8, 4 #J 
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #O
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4   
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #O  
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #G
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4   
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #G
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4   
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #R
           
           ori $9, $0, 0xA7E0F0 #azul claro         
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4   
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #R
           
           ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 44

capaTest98: beq $20, $0, fimPart98
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest98 
	   
fimPart98: ori $9, $0, 0x0085BB #azul do blue
           sw $9, 0($8)
           addi $8, $8, 4
           
           
           ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 38

capaTest99: beq $20, $0, fimPart99
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest99 

fimPart99: ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P
           
capaTest100: beq $20, $0, fimPart100
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest100
        
fimPart100: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
capaTest101: beq $20, $0, fimPart101
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest101

fimPart101: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #R
           
capaTest102: beq $20, $0, fimPart102
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest102         
        
fimPart102: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
capaTest103: beq $20, $0, fimPart103
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest103
        
fimPart103: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #J
           sw $9, 0($8)
           addi $8, $8, 4 #J 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4

           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #O
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4

           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #O
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #G
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
	   sw $9, 0($8)
           addi $8, $8, 4
          
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
capaTest104: beq $20, $0, fimPart104
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest104

fimPart104:ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #R
           
capaTest105: beq $20, $0, fimPart105
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest105 

fimPart105: ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 39

capaTest106: beq $20, $0, fimPart106
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest106 
	   
fimPart106: ori $9, $0, 0x0085BB #azul do blue
           sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           

           ori $9, $0, 0x0085BB #azul do blue
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 37

capaTest107: beq $20, $0, fimPart107
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest107
        
fimPart107:ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #P
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 4 

capaTest108: beq $20, $0, fimPart108
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest108           

fimPart108: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4 
                               
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #R
           sw $9, 0($8)
           addi $8, $8, 4 #R 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4 
                               
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #J
           sw $9, 0($8)
           addi $8, $8, 4 #J 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4

           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #O
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4

           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #O
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #G
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
	   ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #G
           sw $9, 0($8)
           addi $8, $8, 4 #G
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4 
                               
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #R
           sw $9, 0($8)
           addi $8, $8, 4 #R 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 40

capaTest109: beq $20, $0, fimPart109
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest109
	   
fimPart109: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 10
            
capaTest110: beq $20, $0, fimPart110
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest110
          
          
fimPart110:  ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 35

capaTest111: beq $20, $0, fimPart111
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest111

fimPart111: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #P
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 4 

capaTest112: beq $20, $0, fimPart112
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest112         

fimPart112: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4 
                               
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #R

           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #R
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4 
                               
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #J
           sw $9, 0($8)
           addi $8, $8, 4 #J 
           sw $9, 0($8)
           addi $8, $8, 4 #J 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4

           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #O
           sw $9, 0($8)
           addi $8, $8, 4 #O
           sw $9, 0($8)
           addi $8, $8, 4 #O
           sw $9, 0($8)
           addi $8, $8, 4 #O
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #G
           sw $9, 0($8)
           addi $8, $8, 4 #G
           sw $9, 0($8)
           addi $8, $8, 4 #G
           sw $9, 0($8)
           addi $8, $8, 4 #G
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4        
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4 
                               
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #A
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #R

           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #R
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 37

capaTest113: beq $20, $0, fimPart113
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest113
	   
fimPart113: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 11
            
capaTest114: beq $20, $0, fimPart114
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest114            

fimPart114: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 116
           
capaTest115: beq $20, $0, fimPart115
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest115  
        
fimPart115: ori $9, $0, 0x676B5E #cinza
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4 
            
            ori $9, $0, 0x0085BB #azul do blue
            sw $9, 0($8)
            addi $8, $8, 4 
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x1B6C9B #azul escuro do olho
            sw $9, 0($8)
            addi $8, $8, 4 
            sw $9, 0($8)
            addi $8, $8, 4 
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 4
            
capaTest116: beq $20, $0, fimPart116
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest116 

fimPart116: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 116
           
capaTest117: beq $20, $0, fimPart117
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest117 
        
fimPart117: ori $9, $0, 0x676B5E #cinza
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4 
            
            ori $9, $0, 0x0085BB #azul do blue
            sw $9, 0($8)
            addi $8, $8, 4 

            ori $9, $0, 0x1B6C9B #azul escuro do olho
            sw $9, 0($8)
            addi $8, $8, 4 
            sw $9, 0($8)
            addi $8, $8, 4  
            
            ori $9, $0, 0xFFFBFC #branco
            sw $9, 0($8)
            addi $8, $8, 4  
            
            ori $9, $0, 0x1B6C9B #azul escuro do olho
            sw $9, 0($8)
            addi $8, $8, 4   
            
            ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 5
            
capaTest118: beq $20, $0, fimPart118
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest118 

fimPart118: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 114
           
capaTest119: beq $20, $0, fimPart119
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest119 
        
fimPart119: ori $9, $0, 0x676B5E #cinza
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4 
            sw $9, 0($8)
            addi $8, $8, 4 
            
            ori $9, $0, 0x0085BB #azul do blue
            sw $9, 0($8)
            addi $8, $8, 4 

            ori $9, $0, 0x1B6C9B #azul escuro do olho
            sw $9, 0($8)
            addi $8, $8, 4 
            
            ori $9, $0, 0x00010C #preto
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0xFFFBFC #branco
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x1B6C9B #azul escuro do olho
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4 
            
            ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 5
            
capaTest120: beq $20, $0, fimPart120
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest120

fimPart120: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 113
           
capaTest121: beq $20, $0, fimPart121
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest121 
        
fimPart121: ori $9, $0, 0x676B5E #cinza
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
            
            ori $9, $0, 0x00010C #preto
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0xFFFBFC #branco
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x1B6C9B #azul escuro do olho
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 5
            
capaTest122: beq $20, $0, fimPart122
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest122
        
fimPart122: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 113
           
capaTest123: beq $20, $0, fimPart123
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest123 
        
fimPart123: ori $9, $0, 0x676B5E #cinza
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
            
            ori $9, $0, 0xFFFBFC #branco
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0xA7E0F0 #azul claro
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 6
            
capaTest124: beq $20, $0, fimPart124
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest124
        
fimPart124: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 112
           
capaTest125: beq $20, $0, fimPart125
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest125 
        
fimPart125: ori $9, $0, 0x676B5E #cinza
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
            
            ori $9, $0, 0xA7E0F0 #azul claro
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0xFFFBFC #branco
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4

            ori $9, $0, 0xA7E0F0 #azul claro
            sw $9, 0($8)
            addi $8, $8, 4 
            
            ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 6
            
capaTest126: beq $20, $0, fimPart126
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest126
        
fimPart126: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 112
           
capaTest127: beq $20, $0, fimPart127
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest127 
        
fimPart127: ori $9, $0, 0x676B5E #cinza
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
            
            ori $9, $0, 0xA7E0F0 #azul claro
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 5
            
capaTest128: beq $20, $0, fimPart128
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest128
        
fimPart128: ori $9, $0, 0xA7E0F0 #azul claro
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 20
            
capaTest129: beq $20, $0, fimPart129
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest129 
        
fimPart129:  ori $9, $0, 0xA7E0F0 #azul claro
	     addi $20, $0, 60
	  
capaTest130: beq $20, $0, fimPart130
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest130                   

fimPart130: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 20
            
capaTest131: beq $20, $0, fimPart131
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest131       
        
fimPart131:  ori $9, $0, 0xA7E0F0 #azul claro
	     addi $20, $0, 10 
	    
capaTest132: beq $20, $0, fimPart132
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest132  
        
fimPart132: ori $9, $0, 0x676B5E #cinza
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
            
            ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 10
            
capaTest133: beq $20, $0, fimPart133
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest133
        
fimPart133: ori $9, $0, 0xA7E0F0 #azul claro
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 40
            
capaTest134: beq $20, $0, fimPart134
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest134
    
fimPart134: ori $9, $0, 0xA7E0F0 #azul claro
	     addi $20, $0, 35 
	    
capaTest135: beq $20, $0, fimPart135
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest135
        
fimPart135: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 30
            
capaTest136: beq $20, $0, fimPart136
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest136       
        
fimPart136: ori $9, $0, 0xA7E0F0 #azul claro
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
            
            ori $9, $0, 0x676B5E #cinza
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0xA7E0F0 #azul claro
            sw $9, 0($8)
            addi $8, $8, 4

            ori $9, $0, 0x676B5E #cinza
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 8
            
capaTest137: beq $20, $0, fimPart137
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest137

fimPart137: ori $9, $0, 0xA7E0F0 #azul claro
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 110
            
capaTest138: beq $20, $0, fimPart138
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest138          

fimPart138: ori $9, $0, 0x676B5E #cinza
            sw $9, 0($8)
            addi $8, $8, 4
            
           ori $9, $0, 0x53B7E6 #azul escuro
            sw $9, 0($8)
            addi $8, $8, 4
	    sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x676B5E #cinza
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 8
            
capaTest139: beq $20, $0, fimPart139
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest139
        
fimPart139:  ori $9, $0, 0xA7E0F0 #azul claro
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 116
            
capaTest140: beq $20, $0, fimPart140
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest140            
        
fimPart140: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 8
            
capaTest141: beq $20, $0, fimPart141
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest141
        
fimPart141:     
            ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 119
            
capaTest142: beq $20, $0, fimPart142
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest142            
        
fimPart142: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 10
            
capaTest143: beq $20, $0, fimPart143
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest143
        
fimPart143: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 33
            
capaTest144: beq $20, $0, fimPart144
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest144            
        
fimPart144: ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 7
            
capaTest145: beq $20, $0, fimPart145
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest145
        
fimPart145: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 77
            
capaTest146: beq $20, $0, fimPart146
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest146            
        
fimPart146: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 12
            
capaTest147: beq $20, $0, fimPart147
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest147
 
fimPart147: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 29
            
capaTest148: beq $20, $0, fimPart148
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest148            
        
fimPart148: ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 13
            
capaTest149: beq $20, $0, fimPart149
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest149
        
fimPart149: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 73
            
capaTest150: beq $20, $0, fimPart150
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest150            
        
fimPart150: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 14
            
capaTest151: beq $20, $0, fimPart151
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest151
 
fimPart151: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 27
            
capaTest152: beq $20, $0, fimPart152
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest152            
        
fimPart152: ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 20
            
capaTest153: beq $20, $0, fimPart153
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest153

fimPart153: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 67
            
capaTest154: beq $20, $0, fimPart154
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest154            
        
fimPart154: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 15
            
capaTest155: beq $20, $0, fimPart155
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest155
 
fimPart155:  ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 15
            
capaTest156: beq $20, $0, fimPart156
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest156            
        
fimPart156: ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 37
            
capaTest157: beq $20, $0, fimPart157
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest157

fimPart157: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 60
            
capaTest158: beq $20, $0, fimPart158
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest158            
        
fimPart158: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 16
            
capaTest159: beq $20, $0, fimPart159
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest159
 
fimPart159:  ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 57
            
capaTest160: beq $20, $0, fimPart160
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest160

fimPart160: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 55
                      
capaTest161: beq $20, $0, fimPart161
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest161            
        
fimPart161: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 16
            
capaTest162: beq $20, $0, fimPart162
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest162
 
fimPart162: ori $9, $0, 0x6CA57A #verde claro
	    addi $20, $0, 18
            
capaTest163: beq $20, $0, fimPart163
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest163
        
fimPart163: ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 50
            
capaTest164: beq $20, $0, fimPart164
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest164

fimPart164: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 44
                      
capaTest165: beq $20, $0, fimPart165
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest165            
        
fimPart165: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 10
            
capaTest166: beq $20, $0, fimPart166
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest166
 
fimPart166: ori $9, $0, 0x025B90 #azul asa
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x0085BB #azul do blue
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
            
            ori $9, $0, 0x6CA57A #verde claro
	    addi $20, $0, 25
            
capaTest167: beq $20, $0, fimPart167
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest167
        
fimPart167:ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 44
            
capaTest168: beq $20, $0, fimPart168
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest168

fimPart168: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 43
                      
capaTest169: beq $20, $0, fimPart169
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest169            
        
fimPart169: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 9
            
capaTest170: beq $20, $0, fimPart170
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest170
 
fimPart170: ori $9, $0, 0x025B90 #azul asa
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            
            ori $9, $0, 0x0085BB #azul do blue
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
            
            ori $9, $0, 0x6CA57A #verde claro
	    addi $20, $0, 40
            
capaTest171: beq $20, $0, fimPart171
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest171
        
fimPart171:ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 34
            
capaTest172: beq $20, $0, fimPart172
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest172

fimPart172: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 38
                      
capaTest173: beq $20, $0, fimPart173
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest173            
        
fimPart173: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 9
            
capaTest174: beq $20, $0, fimPart174
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest174
 
fimPart174: ori $9, $0, 0x025B90 #azul asa
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x0085BB #azul do blue
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0xBDC4AB #amarelo areia
            addi $20, $0, 9
            
capaTest175: beq $20, $0, fimPart175
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest175
 
fimPart175: ori $9, $0, 0x6CA57A #verde claro
	    addi $20, $0, 20
            
capaTest176: beq $20, $0, fimPart176
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest176
        
fimPart176:ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 20
            
capaTest177: beq $20, $0, fimPart177
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest177

fimPart177: ori $9, $0, 0xBDC4AB #amarelo areia
            addi $20, $0, 9
            
capaTest178: beq $20, $0, fimPart178
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest178
 
fimPart178: ori $9, $0, 0x5E9172 #verde musgo
            addi $20, $0, 14
            
capaTest179: beq $20, $0, fimPart179
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest179
 
fimPart179: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 39
                      
capaTest180: beq $20, $0, fimPart180
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest180            
        
fimPart180: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 9
            
capaTest181: beq $20, $0, fimPart181
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest181
 
fimPart181: ori $9, $0, 0x025B90 #azul asa
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
            
            ori $9, $0, 0x0085BB #azul do blue
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4

            ori $9, $0, 0xBDC4AB #amarelo areia
            addi $20, $0, 50
            
capaTest182: beq $20, $0, fimPart182
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest182
 
fimPart182: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 61
                      
capaTest183: beq $20, $0, fimPart183
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest183            
        
fimPart183: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 9
            
capaTest184: beq $20, $0, fimPart184
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest184
 
fimPart184: ori $9, $0, 0x025B90 #azul asa
            sw $9, 0($8)
            addi $8, $8, 4

            ori $9, $0, 0x0085BB #azul do blue
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
	    sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x025B90 #azul asa
            sw $9, 0($8)
            addi $8, $8, 4

            ori $9, $0, 0x0085BB #azul do blue
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4

            ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 111
            
capaTest185: beq $20, $0, fimPart185
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest185
 
fimPart185: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 8
            
capaTest186: beq $20, $0, fimPart186
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest186
 
fimPart186: ori $9, $0, 0x025B90 #azul asa
            sw $9, 0($8)
            addi $8, $8, 4

            ori $9, $0, 0x0085BB #azul do blue
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
            
            ori $9, $0, 0x025B90 #azul asa
            sw $9, 0($8)
            addi $8, $8, 4

            ori $9, $0, 0x0085BB #azul do blue
            sw $9, 0($8)
            addi $8, $8, 4

            ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 111
            
capaTest187: beq $20, $0, fimPart187
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest187
 
fimPart187: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 17
            
capaTest188: beq $20, $0, fimPart188
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest188
 
fimPart188: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 112
            
capaTest189: beq $20, $0, fimPart189
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest189
 
fimPart189: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 16
            
capaTest190: beq $20, $0, fimPart190
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest190
 
fimPart190: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 113
            
capaTest191: beq $20, $0, fimPart191
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest191
 
fimPart191: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 15
            
capaTest192: beq $20, $0, fimPart192
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest192
 
fimPart192: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 114
            
capaTest193: beq $20, $0, fimPart193
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest193
 
fimPart193: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 14
            
capaTest194: beq $20, $0, fimPart194
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest194
 
fimPart194: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 114
            
capaTest195: beq $20, $0, fimPart195
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest195
 
fimPart195: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 14
            
capaTest196: beq $20, $0, fimPart196
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest196
 
fimPart196: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 115
            
capaTest197: beq $20, $0, fimPart197
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest197
 
fimPart197: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 13
            
capaTest198: beq $20, $0, fimPart198
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest198
 
fimPart198: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 115
            
capaTest199: beq $20, $0, fimPart199
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest199
 
fimPart199: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 13
            
capaTest200: beq $20, $0, fimPart200
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j capaTest200
 
fimPart200: lui $21, 0xffff #ler teclado
	    addi $10, $0, 32 #guardar espaço
	    lui $8, 0x1001 #reinicar posição da memória
	    lui $9, 0x0 #preto
	    addi $20, $0, 8192 #quantidade de vezes que vai pintar o fundo
	    
tecladoCapa:
	    lw $22, 0($21)
	    beq $22, $0, voltaTecladoCapa
	    lw $22, 4($21)
	    beq $22, $10, testTelaPreta
	    j voltaTecladoCapa
	   
testTelaPreta: beq $20, $0, fase1
	       sw $9, 0($8)
	       addi $8, $8, 4
	       addi $20, $20, -1 
	       div $20 $8
	       mfhi $25
	       beq $25 $0 time_tela_preta
	   vt: j testTelaPreta
		       
voltaTecladoCapa: j tecladoCapa
time_tela_preta:
		addi $24 $0 30000
	t:
		beq $24 $0 vt
		nop
		addi $24 $24 -1
		j t

# Fase 1 Jogo Rio
# Azul do fundo: 0x546c8f 
# Preto das paredes: 0x000000
# salva o fundo em outro lugar da memoria: 131084($8) 
# Cinza grades: 0xb4b4b4
# Registradores sendo usados cenario:
#			    $15 -> variaveis para loops
#			    $9 até $14, $16 ate $20 -> cores
#			    $8, $7 e $6 -> espaço na memoria
#			    $21 -> tamanho da tela
# Registradores utilizados pós cenário:
#			    $16, $17, $18, $11, $12 --> cores blue
#			    $9 -> fundo/rastro
#			    $19, $20, $13, $14 -> teclas do jogo   		


fase1:

     lui $8, 0x1001	   # fundo
    
     # lui $6, 0x1001	   # gaiola com passaros
     ori $9, $0, 0x141d29  # Azul escuro
     ori $10, $0, 0x546d8f # muros
     ori $11, $0, 0x0000   # Cinza da gaiola
     ori $12, $0, 0xfea3b1 # passaro da gaiola (rosa)
     ori $13, $0, 0xfff201 # passaro da gaiola (amarelo)
     ori $14, $0, 0xa8e61d # passaro da gaiola (verde)
     ori $16, $0, 0xfffffe # branco
     ori $17, $0, 0x736c73 # bicos
     ori $18, $0, 0x9c5b3c # patas
     ori $19, $0, 0xff7e00 # passaro da gaiola (laranja)
     ori $20, $0, 0x2a3340 # azul escuro para detalhes
     
     addi $21, $0, 8192   # Tamanho da tela toda
     addi $15 $0 16
     
FundoAzul: # Pinta todo o fundo azul
      beq $21, $0, Murosf1
      sw $9, 0($8) 
      addi $8, $8, 4
      addi $21, $21, -1
      j FundoAzul
Murosf1: 
	addi $15 $0 512
	lui $8, 0x1001	   # muros e gaiolas com passaros
	# Contorno da tela
	parte_superior_inferior:
		beq $15 $0 fim_parte_superior_inferior
		sw $10 0($8)    # parte superior
		sw $20 512($8)  # parte superior sombra
		sw $20 31744($8)# parte inferior sombra
		sw $10 32256($8)# parte inferior
		addi $8 $8 4
		addi $15 $15 -4
		j parte_superior_inferior
	fim_parte_superior_inferior:
	lui $8, 0x1001
	addi $15 $0 248
	partes_laterais_p1:
		beq $15 $0 parte_laterais_p2
		sw $10 512($8)   # esq
		sw $20 516($8)   # esq sombra
		sw $20 1016($8)  # dir sombra
		sw $10 1020($8)  # dir
		addi $8 $8 512
		addi $15 $15 -4
		j partes_laterais_p1
	parte_laterais_p2:
	lui $8, 0x1001
	addi $15 $0 100
	fim_laterais:
	lui $8, 0x1001
	addi $15 $0 24
	quadrados_muros:
		parte_sup_infer_quadrado:
			beq $15 $0 dentro_do_quadrado
			sw $10 3636($8) # Q1
			sw $10 5684($8)
			sw $10 4012($8) # Q2
			sw $10 6060($8)
			sw $10 28212($8)# Q3
			sw $10 26164($8)
			sw $10 26540($8)# Q4
			sw $10 28588($8) 
		
			addi $15 $15 -4
			addi $8 $8 4
			j parte_sup_infer_quadrado
	dentro_do_quadrado:
		lui $8, 0x1001
		addi $15 $0 24
	for_dentro_do_quadrado:
			beq $15 $0 parte_laterais_quadrado
			sw $20 4148($8) # Q1
			sw $20 4660($8) # Q1
			sw $20 5172($8) # Q1
			
			sw $20 4524($8) # Q2
			sw $20 5036($8) # Q2
			sw $20 5548($8) # Q2
			
			sw $20 26676($8)# Q3
			sw $20 27188($8)# Q3
			sw $20 27700($8)# Q3
			
			sw $20 27052($8)# Q4
			sw $20 27564($8)# Q4
			sw $20 28076($8)# Q4
			
			addi $15 $15 -4
			addi $8 $8 4
			j for_dentro_do_quadrado
	parte_laterais_quadrado:
		lui $8, 0x1001
		addi $15 $0 20
		for_laterais_quadrado:
			beq $15 $0 fim_quadrados
			sw $10 3632($8) # Q1
			sw $10 3660($8)
			
			sw $10 4008($8) # Q2
			sw $10 4036($8)
			
			sw $10 26188($8)# Q3
			sw $10 26160($8)
			
			sw $10 26536($8)# Q4
			sw $10 26564($8)
			
			addi $8 $8 512
			addi $15 $15 -4
			j for_laterais_quadrado
		fim_quadrados:
		lui $8, 0x1001
		addi $15 $0 48
obstaculo_entre_quadrados:
			beq $15 $0 jaula_central
			# 672 832
      			sw $10 124($8)    # parte de cima do L1
      			sw $10 372($8)    # parte de cima do L2
      			sw $10 26236($8)  # parte de baixo do L3
      			sw $10 26484($8)  # parte de baixo do L4
      			addi $8 $8 512
      			addi $15 $15 -4
      			j obstaculo_entre_quadrados
	jaula_central:
	lui $8, 0x1001
	addi $15 $0 20
	laterais_da_jaula: 
			beq $15 $0 fim_laterais_jaula
			sw $10 10876($8) # parte lateral esquerda da jaula 
			sw $10 10832($8) # parte lateral esquerda externa da jaula
			sw $10 11124($8) # parte lateral direita da jaula
			sw $10 11172($8) # parte lateral direita externa da jaula
			addi $8 $8 512
			addi $15 $15 -1
			j laterais_da_jaula
	fim_laterais_jaula:
	lui $8, 0x1001
	addi $15 $0 20
parte_superior_gaiola_central:
			beq $15 $0 fimparte_superior_gaiola_central
			sw $10 10880($8) # esquerda
			sw $10 5332($8)  # centro parte superior
			sw $10 11048($8) # direita
			sw $10 26836($8) # centro parte inferior
			addi $8 $8 4
			addi $15 $15 -1
			j parte_superior_gaiola_central
fimparte_superior_gaiola_central:
	lui $8, 0x1001
	addi $15 $0 63
parte_inferior_gaiola_central:
			beq $15 $0 fimgaiola_central
			sw $10 21116($8) # parte inferior jaula central
			addi $8 $8 4
			addi $15 $15 -1
			j parte_inferior_gaiola_central
fimgaiola_central:
	lui $8, 0x1001
	addi $15 $0 8
muro_frente_entrada_saida:
		beq $15 $0 fim_muros
		sw $10 15412($8)
		sw $10 15784($8)
		addi $8 $8 4
		addi $15 $15 -1
		j muro_frente_entrada_saida
fim_muros:
# gaiolas de passaros :|
	lui $8, 0x1001
# PASSARO ROSA
	ori $14, $0, 0xf77287 # detalhe passaro rosa
	sw $14 12424($8)# parte rosa da cabeça1
	sw $12 12428($8)# parte rosa da cabeça1
	sw $12 12432($8)# parte rosa da cabeça1
	sw $12 12436($8)# parte rosa da cabeça1
	sw $12 12440($8)# parte rosa da cabeça1
	sw $12 12444($8)# parte rosa da cabeça1
	sw $14 12940($8)# parte rosa da cabeça2
	sw $12 12944($8)# parte rosa da cabeça2
	sw $16 12948($8)# parte rosa da cabeça2
	sw $17 12956($8)# parte rosa da cabeça2
	sw $17 12960($8)# parte rosa da cabeça2
	sw $14 13456($8)# parte rosa da cabeça3
	sw $12 13460($8)# parte rosa da cabeça3
	sw $12 13464($8)# parte rosa da cabeça3
	sw $12 13468($8)# parte rosa da cabeça3
	sw $17 13468($8)# parte rosa da cabeça3
	sw $17 13472($8)# parte rosa da cabeça3
	sw $14 13968($8)# parte rosa da cabeça4
	sw $12 13972($8)# parte rosa da cabeça4
	sw $12 13976($8)# parte rosa da cabeça4
	sw $12 13980($8)# parte rosa da cabeça4
	sw $14 14476($8)# parte rosa 5
	sw $12 14480($8)# parte rosa 5
	sw $12 14484($8)# parte rosa 5
	sw $12 14488($8)# parte rosa 5
	sw $12 14492($8)# parte rosa 5
	sw $14 14984($8)# parte rosa 6
	sw $12 14988($8)# parte rosa 6
	sw $12 14992($8)# parte rosa 6
	sw $12 14996($8)# parte rosa 6
	sw $12 15000($8)# parte rosa 6
	sw $12 15004($8)# parte rosa 6
	sw $14 15500($8)# parte rosa 7
	sw $12 15504($8)# parte rosa 7
	sw $12 15508($8)# parte rosa 7
	sw $12 15512($8)# parte rosa 7
	sw $12 15516($8)# parte rosa 7
	sw $18 16016($8)# pata
	sw $18 16024($8)# pata
# PASSARO AMARELO
	ori $14, $0, 0xd19a02 # detalhe passaro amarelo
	sw $13 17556($8)# parte cabeça1
	sw $14 18064($8)# parte cabeça1
	sw $13 18068($8)# parte cabeça1
	sw $13 18072($8)# parte cabeça1
	
	sw $14 18576($8)# parte amarela 2
	sw $16 18580($8)# parte branca olho
	sw $17 18588($8)# bico
	
	sw $14 19084($8)# parte amarela 3
	sw $13 19088($8)# parte amarela 3
	sw $13 19092($8)# parte amarela 3
	sw $13 19096($8)# parte amarela 3
	
	sw $14 19600($8)# parte amarela 4
	sw $13 19604($8)# parte amarela 4
	sw $13 19608($8)# parte amarela 4
	sw $18 20116($8)# pata
	
# PASSARO VERDE
	ori $14, $0, 0xa8e61d # passaro da gaiola (verde)
	ori $13, $0, 0x86b818 # detalhe passaro verde

	sw $14 12632($8) # parte verde 0
	sw $14 13140($8) # parte verde 1
	sw $14 13144($8) # parte verde 1
	sw $13 13148($8) # parte verde 1
	sw $17 13648($8)# bico
	sw $16 13656($8)# parte branca olho
	sw $13 13660($8) # parte verde 2
	sw $14 14164($8) # parte verde 3
	sw $14 14168($8) # parte verde 3
	sw $14 14172($8) # parte verde 3
	sw $13 14176($8) # parte verde 3
	sw $14 14676($8) # parte verde 4
	sw $14 14680($8) # parte verde 4
	sw $13 14684($8) # parte verde 4
	sw $18 15192($8) # pata
# PASSARO LARANJA
	ori $13, $0, 0xd16a06 # detalhe passaro laranja
	
	sw $19 16724($8) # parte laranja 1
	sw $19 16728($8) # parte laranja 1
	sw $19 16732($8) # parte laranja 1
	sw $13 16736($8) # parte laranja 1
	sw $13 16740($8) # parte laranja 1
	sw $13 17232($8) # bico
	sw $13 17236($8) # bico
	
	sw $13 17240($8) # parte branca olho
	sw $13 17244($8) # parte branca olho
	sw $13 17248($8) # parte laranja 2
	sw $17 17744($8) # bico
	sw $16 17752($8) # parte laranja 3
	sw $13 17756($8) # parte laranja 3
	sw $13 17760($8) # parte laranja 3
	sw $19 18260($8) # parte laranja 4
	sw $19 18264($8) # parte laranja 4
	sw $19 18268($8) # parte laranja 4
	sw $13 18272($8) # parte laranja 4
	sw $19 18768($8) # parte laranja 5
	sw $19 18772($8) # parte laranja 5
	sw $19 18776($8) # parte laranja 5
	sw $19 18780($8) # parte laranja 5
	sw $13 18784($8) # parte laranja 5
	sw $13 18788($8) # parte laranja 5
	sw $19 19280($8) # parte laranja 6
	sw $19 19284($8) # parte laranja 6
	sw $19 19288($8) # parte laranja 6
	sw $19 19292($8) # parte laranja 6
	sw $13 19296($8) # parte laranja 6
	sw $13 19300($8) # parte laranja 6
	sw $13 19304($8) # parte laranja 6
	sw $19 19792($8) # parte laranja 7
	sw $19 19796($8) # parte laranja 7
	sw $19 19800($8) # parte laranja 7
	sw $19 19804($8) # parte laranja 7
	sw $19 19808($8) # parte laranja 7
	sw $19 19812($8) # parte laranja 7
	sw $13 19816($8) # parte laranja 7
	
	sw $19 20308($8) # parte laranja 8
	sw $19 20312($8) # parte laranja 8
	sw $19 20316($8) # parte laranja 8
	sw $19 20320($8) # parte laranja 8
	
gaiolas_passaros:
	lui $8, 0x1001
	ori $11, $0, 0xb4b4b5 # Cinza da gaiola
	gaiola_1: # GAIOLA 1
		addi $15 $0 9
	for_gaiola1h:
		beq $15 $0 gaiola1h
		sw $11 11908($8)# superior
		sw $11 13956($8)# meio
		sw $11 16004($8)# inferior
		addi $8 $8 4
		addi $15 $15 -1
		j for_gaiola1h
	gaiola1h:
		lui $8, 0x1001
		addi $15 $0 9
	for_gaiola1v:
		beq $15 $0 gaiola1v
		sw $11 11908($8)# superior
		sw $11 11924($8)# meio
		sw $11 11944($8)# superior
		addi $8 $8 512
		addi $15 $15 -1
		j for_gaiola1v
	gaiola1v: # GAIOLA 1
		lui $8, 0x1001
		addi $15 $0 9
	gaiola1vv: 
		beq $15 $0 gaiola2
		sw $11 17028($8)# superior
		# sw $11 18052($8)# meio
		sw $11 19076($8)# meio
		sw $11 20612($8)# inferior
		addi $8 $8 4
		addi $15 $15 -1
		j gaiola1vv
	gaiola2:
		lui $8, 0x1001
		addi $15 $0 8
	gaiola2v:
		beq $15 $0 gaiola3
		sw $11 17028($8)# esquerdo
		sw $11 17044($8)# meio
		sw $11 17064($8)# direito
		addi $8 $8 512
		addi $15 $15 -1
		j gaiola2v
	gaiola3:
		lui $8, 0x1001
		addi $15 $0 9
	gaiola3h:
		beq $15 $0 gaiola3v
		sw $11 12104($8)   # supereior
		sw $11 14152($8)   # meio
		sw $11 15688($8)   # inferior
		addi $8 $8 4
		addi $15 $15 -1
		j gaiola3h
	gaiola3v:
		lui $8, 0x1001
		addi $15 $0 8
	gaiola3vv:
		beq $15 $0 gaiola4
		sw $11 12104($8)  # esq
		sw $11 12124($8)  # meio
		sw $11 12140($8)  # dir
		addi $8 $8 512
		addi $15 $15 -1
		j gaiola3vv
	gaiola4:
		lui $8, 0x1001
		addi $15 $0 10
	gaiola4h:
		beq $15 $0 gaiola4v
		sw $11 16712($8)   # superior
		sw $11 18760($8)   # meio
		sw $11 20808($8)   # inferior
		addi $8 $8 4
		addi $15 $15 -1
		j gaiola4h
	gaiola4v:
		lui $8, 0x1001
		addi $15 $0 8
	gaiola4vv:
		beq $15 $0 fimgaiolas
		sw $11 16712($8)   # superior
		sw $11 16732($8) # meio
		sw $11 16748($8)   # inferior
		addi $8 $8 512
		addi $15 $15 -1
		j gaiola4vv
	fimgaiolas:
# FRUTAS INICIO DE JOGO
	frutas:
	lui $8, 0x1001
	ori $12, $0, 0xed1c24 # vermelho morango
	ori $19, $0, 0xa11017 # vermelho degrade mais escuro
	ori $13, $0, 0xe34d55 # vermelho degrade mais claro
	
	# $14 -> verde para folhas
		morango:
			sw $19 3548($8)
			sw $14 3040($8) # folha
			sw $12 3552($8)
			sw $12 3556($8)
			sw $19 4056($8)
			sw $12 4060($8)
			sw $12 4064($8)
			sw $12 4068($8)
			sw $13 4072($8)
			sw $19 4568($8)
			sw $12 4572($8)
			sw $13 4576($8)
			sw $12 4580($8)
			sw $12 4584($8)
			sw $19 5084($8)
			sw $13 5088($8)
			sw $12 5092($8)
			sw $12 5600($8)

	frutass:
	lui $8, 0x1001
	# $13 -> amarelo, $18 -> cacho
	ori $13, $0, 0xf7f2ad # amarelo degrade mais claro
	ori $19, $0, 0xfff34d # amarelo normal
	ori $12, $0, 0xa89d03 # amarelo degrade mais escuro
		banana:
		
			sw $18 28192($8) # cacho
			sw $19 28700($8)
			sw $19 28704($8)
			sw $19 29208($8)
			sw $12 29212($8)
			sw $13 29216($8)
			sw $12 29712($8)
			sw $19 29716($8)
			sw $19 29720($8)
			
# frutas da função
# fruta final
		

####### Entrada saida
# MOVIMENTO DO BLUE
	dados_blue:
     		ori $27, $0, 0xb4b4b5 # Cinza da gaiola
     		ori $9, $0,  0x141d29 # Cor de fundo para rastros
     		ori $25, $0, 0x2a3340 # azul escuro para detalhes
     		ori $22, $0, 0xfff34d # amarelo normal
     		addi $5 $0 2
     		
     		ori $18, $0, 0xfa020c # vermelho maçã
     		ori $7, $0, 0xfae050  # amarelo
     		ori $16, $0, 0xfffffe # branco
     		#ori $18, $0, 0x0C0D0D # preto
     		ori $11, $0, 0x546CF0 # Azul claro blue
     		ori $12, $0, 0x333597 # Azul escuro blue
     		ori $17, $0, 0xB4B4B4 # bico
     		
  		lui $6, 0x1001
     		lui $8, 0x1001        # memoria do blue
     		lui $21 0xffff
  	
     		addi $13 $0 'a' # move para a esquerda
     		addi $14 $0 's' # move para baixo
     		addi $20 $0 'w' # move para cima
     		addi $19 $0 'd' # move para a direita
     		
     		
     	desenho_bluef1:
     		
		
     		sw $11 14872($8) # L1**
     		sw $11 14876($8) # L1*
     		sw $11 14880($8) # L1*
     		sw $11 14884($8) # L1**
     		
     		sw $11 15388($8) # L2*
     		sw $16 15392($8) # L2 branco
     		sw $9 15396($8) # L2 preto
     		sw $17 15400($8) # L2** bico
     		
     		sw $12 15892($8) # L3*
     		sw $12 15896($8) # L3*
     		sw $11 15900($8) # L3
     		sw $16 15904($8) # L3
     		sw $9 15908($8) # L3 preto
     		sw $17 15912($8) # L3** bico
     		
     		sw $11 16400($8) # L4* rabo
     		sw $11 16404($8) # L4
     		sw $11 16408($8) # L4
     		sw $12 16412($8) # L4
     		sw $11 16416($8) # L4
     		sw $11 16420($8) # L4

     		sw $12 16916($8) # L5*
     		sw $12 16920($8) # L5
     		sw $11 16924($8) # L5
     		sw $11 16928($8) # L5
     		sw $11 16932($8) # L5
		
	 	lw $23 4($21)    # recupera da memoria se alguma tecla foi pressionada
	 	
		jal timerf1
		lw $23 4($21)    # recupera da memoria se alguma tecla foi pressionada
		beq $23 $19 dirf1
		beq $23 $13 esqf1
		beq $23 $14 baixof1
		beq $23 $20 cimaf1

		j desenho_bluef1 
		
	dirf1:	ori $27, $0, 0xb4b4b5 # Cinza da gaiola
		ori $10, $0, 0x546d8f # muros
		lw $24 14888($8)  # colisao em cima do bico
		beq $24 $25 colisao
	   	beq $24 $10 perdeuf1
		beq $24 $27 colisao
		
		lw $24 15408($8)  # colisao frente bico
		beq $24 $25 colisao
	   	beq $24 $10 perdeuf1
		beq $24 $27 colisao
		
		lw $24 15916($8) # bico
		beq $24 $25 colisao
	   	beq $24 $10 perdeuf1
		beq $24 $27 colisao
		
		lw $24 16428($8) # frente
		beq $24 $25 colisao
	   	beq $24 $10 perdeuf1
		beq $24 $27 colisao
		
		lw $24 16940($8) # frente
		beq $24 $25 colisao
	   	beq $24 $10 perdeuf1
		beq $24 $27 colisao
		
   		#lw $24 17448($8) # frente
		#beq $24 $25 colisao
	   	#beq $24 $10 colisao
		#beq $24 $27 colisao

   		addi $8 $8 +4

     		sw $9 14868($8)  # rastro esq
     		sw $9 15384($8)  # rastro esq
     		sw $9 15896($8)  # rastro esq
     		sw $9 15888($8)  # rastro dir
     		sw $9 16396($8)  # L4* rabo
     		sw $9 16404($8)  # rastro esq
     		sw $9 16912($8)  # rastro esq
		
		# laranja
		lw $24 14888($8)    # verificar fruta
		beq $24 $7 verificar_fruta	
		lw $24 15404($8)    # verificar fruta
		beq $24 $7 verificar_fruta
		lw $24 15916($8)    # verificar fruta
		beq $24 $7 verificar_fruta
		lw $24 16424($8)    # verificar fruta
		beq $24 $7 verificar_fruta
		lw $24 16936($8)    # verificar fruta
		beq $24 $7 verificar_fruta
		
		
		#morango
		ori $10, $0, 0xed1c24 # vermelho morango
		lw $24 14888($8)    # verificar fruta
		beq $24 $10 apaga_morango
		lw $24 15404($8)    # verificar fruta
		beq $24 $10 apaga_morango
		lw $24 15916($8)    # verificar fruta
		beq $24 $10 apaga_morango
		lw $24 16424($8)    # verificar fruta
		beq $24 $10 apaga_morango
		lw $24 16936($8)    # verificar fruta
		beq $24 $10 apaga_morango
		
		# fruta final 
		ori $27, $0, 0x1b241d  # contorno
		lw $24 14888($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 15404($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 15916($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 16424($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 16936($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		
		#colisao parede invisivel para passar de fase
		ori $10, $0, 0x141c26 # muro invisivel
		lw $24 14888($8)    
		beq $24 $10 ftela_pretaf1	
		lw $24 15404($8)    
		beq $24 $10 ftela_pretaf1
		lw $24 15916($8)    
		beq $24 $10 ftela_pretaf1	
		lw $24 16424($8)    
		beq $24 $10 ftela_pretaf1
		lw $24 16936($8)   
		beq $24 $10 ftela_pretaf1	

     		j desenho_bluef1
     		
     	esqf1:	ori $27, $0, 0xb4b4b5 # Cinza da gaiola
     		ori $10, $0, 0x546d8f # muros
     		lw $24 15368($8)    # colisao atras rabo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
	   	
		beq $24 $27 colisao # colisao jaulas
		
     		lw $24 16392($8)    # colisao atras rabo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
     		
     		lw $24 16912($8)    # colisao atras rabo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas

		lw $24 14852($8)    # colisao atras
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
		lw $24 15376($8)    # colisao atras
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas

		lw $24 16916($8)    # colisao atras
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas

     		addi $8 $8 -4

     		sw $9 14888($8)     # rastro dir
     		sw $9 15404($8)     # rastro dir
     		sw $9 15916($8)     # rastro dir
     		sw $9 16396($8)     # rastro dir
     		sw $9 16424($8)     # frente em baixo do bico
     		sw $9 16936($8)     # frente em baixo do bico
     		
     		lw $24 16396($8)    # verificar fruta
		beq $24 $22 verificar_fruta	
		lw $24 16908($8)    # verificar fruta
		beq $24 $22 verificar_fruta
		lw $24 15884($8)    # verificar fruta
		beq $24 $22 verificar_fruta
		lw $24 15372($8)    # verificar fruta
		beq $24 $22 verificar_fruta
		lw $24 14860($8)    # verificar fruta
		beq $24 $22 verificar_fruta
		
		#morango
		ori $10, $0, 0xed1c24 # vermelho morango
		lw $24 16396($8)    # verificar fruta
		beq $24 $10 apaga_morango	
		lw $24 16908($8)    # verificar fruta
		beq $24 $10 apaga_morango	
		lw $24 15884($8)    # verificar fruta
		beq $24 $10 apaga_morango	
		lw $24 15372($8)    # verificar fruta
		beq $24 $10 apaga_morango	
		lw $24 14860($8)    # verificar fruta
		beq $24 $10 apaga_morango	
		
		# maçã
		lw $24 16396($8)    # verificar fruta
		beq $24 $18 fruta_final_f1	
		lw $24 16908($8)    # verificar fruta
		beq $24 $18 fruta_final_f1
		lw $24 15884($8)    # verificar fruta
		beq $24 $18 fruta_final_f1
		lw $24 15372($8)    # verificar fruta
		beq $24 $18 fruta_final_f1
		lw $24 14860($8)    # verificar fruta
		beq $24 $18 fruta_final_f1
		
		# fruta final 
		ori $27, $0, 0x1b241d  # contorno
		lw $24 16396($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 16908($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 15884($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 15372($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 14860($8)    # verificar fruta
		beq $24 $27 abrir_saida	

     		j desenho_bluef1
     		
     	baixof1:ori $27, $0, 0xb4b4b5 # Cinza da gaiola
     		ori $10, $0, 0x546d8f # muros
		lw $24 17428($8)    # colisao embaixo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
     		lw $24 17432($8)    # colisao embaixo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas

		lw $24 17436($8)    # colisao embaixo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
		lw $24 17440($8)    # colisao embaixo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
		lw $24 17444($8)    # colisao embaixo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
		lw $24 16912($8)    # colisao em baixo do rabo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
		lw $24 16424($8)    # colisao em baixo do rabo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
		
		
     		addi $8 $8 +512
     		
     		sw $9 14360($8) # rastro cima cabeca
     		sw $9 14364($8) # rastro cima cabeca
     		sw $9 14368($8) # rastro cima cabeca
     		sw $9 14372($8) # rastro cima cabeca
     		sw $9 14888($8) # rastro cima bico
     		sw $9 14376($8) # rastro cima frente cabeca

     		sw $9 15380($8) # rastro cima 
     		sw $9 15384($8) # rastro cima 
     		sw $9 15888($8) # rastro cima 
     		
     		# banana
		lw $24 17428($8)    # verificar fruta
		beq $24 $22 verificar_fruta	
		lw $24 17432($8)    # verificar fruta
		beq $24 $22 verificar_fruta
		lw $24 17436($8)    # verificar fruta
		beq $24 $22 verificar_fruta
		lw $24 17440($8)    # verificar fruta
		beq $24 $22 verificar_fruta
		lw $24 17444($8)    # verificar fruta
		beq $24 $22 verificar_fruta
		
		# laranja
		
		lw $24 17428($8)    # verificar fruta
		beq $24 $7 verificar_fruta	
		lw $24 17432($8)    # verificar fruta
		beq $24 $7 verificar_fruta
		lw $24 17436($8)    # verificar fruta
		beq $24 $7 verificar_fruta
		lw $24 17440($8)    # verificar fruta
		beq $24 $7 verificar_fruta
		lw $24 17444($8)    # verificar fruta
		beq $24 $7 verificar_fruta
		lw $24 16908($8)    # verificar fruta
		beq $24 $7 verificar_fruta	
		
		# fruta final 
		ori $27, $0, 0x1b241d  # contorno
		lw $24 17940($8)    
		beq $24 $27 abrir_saida
		lw $24 17944($8)    
		beq $24 $27 abrir_saida
		lw $24 17948($8)    
		beq $24 $27 abrir_saida
		lw $24 17952($8)   
		beq $24 $27 abrir_saida
		lw $24 17956($8)   
		beq $24 $27 abrir_saida
		lw $24 17420($8)    
		beq $24 $27 abrir_saida
		
     		j desenho_bluef1
     		
     	cimaf1:	ori $27, $0, 0xb4b4b5 # Cinza da gaiola
     		ori $10, $0, 0x546d8f # muros
     		lw $24 15376($8)    # colisao atras rabo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
     		
     		lw $24 15380($8)    # colisao atras rabo
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
     		lw $24 15884($8)    # colisao atras
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
     	
     		lw $24 14360($8)    # colisao cima
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas

		lw $24 14364($8)    # colisao cima
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas

		lw $24 14368($8)    # colisao cima
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
		lw $24 14372($8)    # colisao cima
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
		lw $24 14376($8)    # colisao cima
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
		lw $24 14380($8)    # colisao cima
		beq $24 $25 colisao # detalhe bordas
	   	beq $24 $10 perdeuf1 # colisao paredes
		beq $24 $27 colisao # colisao jaulas
		
		
     		addi $8 $8 -512

     		sw $9 15384($8)  # rastro baixo
     		sw $9 16424($8)  # rastro baixo bico	
     		sw $9 15400($8)  # rastro cima bico
     		sw $9 16912($8)  # rastro cima bico
     		sw $9 16936($8)  # rastro cima bico
     		sw $9 17428($8)  # rastro cima embaixo
     		sw $9 17432($8)  # rastro cima embaixo
     		sw $9 17436($8)  # rastro cima embaixo
     		sw $9 17440($8)  # rastro cima embaixo
     		sw $9 17444($8)  # rastro cima embaixo
     		
     		
     		#morango
		ori $10, $0, 0xed1c24 # vermelho morango
     		lw $24 14360($8)    # verificar fruta
		beq $24 $10 apaga_morango	
		lw $24 14364($8)    # verificar fruta
		beq $24 $10 apaga_morango
		lw $24 14368($8)    # verificar fruta
		beq $24 $10 apaga_morango
		lw $24 14372($8)    # verificar fruta
		beq $24 $10 apaga_morango
		lw $24 14372($8)    # verificar fruta
		beq $24 $10 apaga_morango
		lw $24 14356($8)    # verificar fruta
		beq $24 $10 apaga_morango
		
     		# maça
     		lw $24 14360($8)    # verificar fruta
		beq $24 $18 fruta_final_f1	
		lw $24 14364($8)    # verificar fruta
		beq $24 $18 fruta_final_f1
		lw $24 14368($8)    # verificar fruta
		beq $24 $18 fruta_final_f1
		lw $24 14372($8)    # verificar fruta
		beq $24 $18 fruta_final_f1
		lw $24 14372($8)    # verificar fruta
		beq $24 $18 fruta_final_f1
		lw $24 14356($8)    # verificar fruta
		beq $24 $18 fruta_final_f1
   
   		# fruta final 
		ori $27, $0, 0x1b241d  # contorno
   		lw $24 14360($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 14364($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 14368($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 14372($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 14372($8)    # verificar fruta
		beq $24 $27 abrir_saida	
		lw $24 14356($8)    # verificar fruta
		beq $24 $27 abrir_saida	
	
     		j desenho_bluef1
perdeuf1:
	addi $23 $0 ' '
	sw $24 4($21)
	j fase1

colisao:
	add $23 $0 $0
	# lw $23 4($21)    # recupera da memoria se alguma tecla foi pressionada
	j desenho_bluef1

verificar_fruta:
	lui $6, 0x1001	  
	beq $24 $22 p1f1  # cor da fruta banana
	beq $24 $7  p2f1  # cor da fruta morango
	
	
p1f1:	# desenha laranja do lado direito inferior
	beq $5 $0 desenho_bluef1
	addi $5 $5 -1
	lui $6, 0x1001
	ori $22, $0, 0xfca000 # laranja
	ori $7, $0, 0xfae050  # amarelo
	j apaga_banana
desenha_laranja:
	sw $22 29652($6) # l1
	sw $22 30164($6) # l2
	sw $7 30168($6) # l2
	sw $22 30676($6) # l3
	sw $7 30680($6) # l3
	sw $7 30684($6) # l3
	sw $22 31192($6) # l4
	sw $7 31196($6) # l4
	sw $7 31200($6) # l4
	sw $22 31708($6) # l5
	sw $22 31712($6) # l5
	sw $22 31716($6) # l5
	
	j desenho_bluef1
p2f1: # desenha maçã do lado esquerda superior
	beq $5 $0 desenho_bluef1
	addi $5 $5 -1
	lui $6, 0x1001
	ori $27, $0, 0xfa020c # vermelho maçã
	ori $7, $0, 0x736637  # marrom
	
	j apaga_laranja
desenha_maça:
	sw $7 1560($6) #L1
	ori $7, $0, 0x4ea65e # verde
	sw $7 1568($6) #L1
	ori $7, $0, 0x736637 # marrom
	sw $7 2072($6) #L2
	ori $7, $0, 0x4ea65e # verde
	sw $7 2076($6) #L2
	
	sw $27 2580($6) #L4
	sw $27 2584($6) #L4
	sw $27 2588($6) #L4
	sw $27 3088($6) #L5
	sw $27 3092($6) #L5
	sw $27 3096($6) #L5
	sw $27 3100($6) #L5
	sw $27 3104($6) #L5
	
	sw $27 3604($6) #L6
	sw $27 3608($6) #L6
	sw $27 3612($6) #L6
	
	j desenho_bluef1

fruta_final_f1: # desenha a fruta final
		lui $6, 0x1001
		ori $27, $0, 0xe3413b # vermelho morango
		ori $7, $0, 0x4efc03  # verde claro
		ori $5, $0, 0x0f7518  # verde escuro
		j apaga_maça
desenha_melancia:
		sw $5 13552($6) # L1
		sw $7 13556($6) # L1
		
		sw $5 14060($6) # L2
		sw $7 14064($6) # L2
		sw $27 14068($6) # L2
		sw $5 14572($6) # L3
		sw $7 14576($6) # L3
		sw $27 14580($6) # L3
		sw $27 14584($6) # L3
		sw $5 15084($6) # L4
		sw $7 15088($6) # L4
		sw $27 15092($6) # L4
		sw $27 15096($6) # L4
		sw $27 15100($6) # L4
		sw $5 15596($6) # L5
		sw $5 15600($6) # L5
		sw $7 15604($6) # L5
		sw $27 15608($6) # L5
		sw $27 15612($6) # L5
		sw $27 15616($6) # L5
		sw $7 15620($6) # L5
		sw $5 16112($6) # L6
		sw $5 16116($6) # L6
		sw $7 16120($6) # L6
		sw $7 16124($6) # L6
		sw $7 16128($6) # L6
		sw $5 16132($6) # L6
		sw $5 16632($6) # L7
		sw $5 16636($6) # L7
		sw $5 16640($6) # L7
		sw $5 16644($6) # L7
	
		ori $27, $0, 0x1b241d  # contorno
		
		sw $27 13548($6) # L1
		sw $27 13040($6) # L1
		sw $27 13044($6) # L1
		sw $27 13048($6) # L1
		sw $27 13560($6) # L1
		
		sw $27 14056($6) # L2
		sw $27 14072($6) # L2
		
		sw $27 14568($6) # L3
		sw $27 14588($6) # L3
		sw $27 15080($6) # L4
		sw $27 15104($6) # L4
		sw $27 15108($6) # L4
		sw $27 15592($6) # L5
		sw $27 15624($6) # L5
		sw $27 16108($6) # L6
		sw $27 16136($6) # L6
		sw $27 16624($6) # L7
		sw $27 16628($6) # L7
		sw $27 16648($6) # L7
		sw $27 17140($6) # L8
		sw $27 17144($6) # L8
		sw $27 17148($6) # L8
		sw $27 17152($6) # L8
		sw $27 17156($6) # L8
		
		addi $5 $0 0
		j desenho_bluef1
abrir_saida:
	lui $6, 0x1001
	ori $10, $0, 0x141c26 # muro invisivel
	addi $5 $0 12
	# Apaga a melancia quando encosta
	
		sw $9 13552($6) # L1
		sw $9 13556($6) # L1
		sw $9 14060($6) # L2
		sw $9 14064($6) # L2
		sw $9 14068($6) # L2
		sw $9 14572($6) # L3
		sw $9 14576($6) # L3
		sw $9 14580($6) # L3
		sw $9 14584($6) # L3
		sw $9 15084($6) # L4
		sw $9 15088($6) # L4
		sw $9 15092($6) # L4
		sw $9 15096($6) # L4
		sw $9 15100($6) # L4
		sw $9 15596($6) # L5
		sw $9 15600($6) # L5
		sw $9 15604($6) # L5
		sw $9 15608($6) # L5
		sw $9 15612($6) # L5
		sw $9 15616($6) # L5
		sw $9 15620($6) # L5
		sw $9 16112($6) # L6
		sw $9 16116($6) # L6
		sw $9 16120($6) # L6
		sw $9 16124($6) # L6
		sw $9 16128($6) # L6
		sw $9 16132($6) # L6
		sw $9 16632($6) # L7
		sw $9 16636($6) # L7
		sw $9 16640($6) # L7
		sw $9 16644($6) # L7
		sw $9 13548($6) # L1
		sw $9 13040($6) # L1
		sw $9 13044($6) # L1
		sw $9 13048($6) # L1
		sw $9 13560($6) # L1
		
		sw $9 14056($6) # L2
		sw $9 14072($6) # L2
		
		sw $9 14568($6) # L3
		sw $9 14588($6) # L3
		sw $9 15080($6) # L4
		sw $9 15104($6) # L4
		sw $9 15108($6) # L4
		sw $9 15592($6) # L5
		sw $9 15624($6) # L5
		sw $9 16108($6) # L6
		sw $9 16136($6) # L6
		sw $9 16624($6) # L7
		sw $9 16628($6) # L7
		sw $9 16648($6) # L7
		sw $9 17140($6) # L8
		sw $9 17144($6) # L8
		sw $9 17148($6) # L8
		sw $9 17152($6) # L8
		sw $9 17156($6) # L8
		lui $6, 0x1001
for_saidaf1:
	beq $5 $0 desenho_bluef1
	sw $9 13816($6)
	sw $10 13820($6)
	addi $5 $5 -1
	addi $6 $6 512
	j for_saidaf1
	# posição saída   18.948
apaga_laranja:
	sw $9 29652($6) # l1
	sw $9 30164($6) # l2
	sw $9 30168($6) # l2
	sw $9 30676($6) # l3
	sw $9 30680($6) # l3
	sw $9 30684($6) # l3
	sw $9 31192($6) # l4
	sw $9 31196($6) # l4
	sw $9 31200($6) # l4
	sw $9 31708($6) # l5
	sw $9 31712($6) # l5
	sw $9 31716($6) # l5
	j desenha_maça

apaga_morango:
	sw $9 3548($6)
	sw $9 3040($6) # folha
	sw $9 3552($6)
	sw $9 3556($6)
	sw $9 4056($6)
	sw $9 4060($6)
	sw $9 4064($6)
	sw $9 4068($6)
	sw $9 4072($6)
	sw $9 4568($6)
	sw $9 4572($6)
	sw $9 4576($6)
	sw $9 4580($6)
	sw $9 4584($6)
	sw $9 5084($6)
	sw $9 5088($6)
	sw $9 5092($6)
	sw $9 5600($6)
	j desenho_bluef1

apaga_banana:
	sw $9 28192($6) # cacho
	sw $9 28700($6)
	sw $9 28704($6)
	sw $9 29208($6)
	sw $9 29212($6)
	sw $9 29216($6)
	sw $9 29712($6)
	sw $9 29716($6)
	sw $9 29720($6)
	j desenha_laranja
apaga_maça:
	sw $9 1560($6) #L1
	sw $9 1568($6) #L1
	sw $9 2072($6) #L2
	sw $9 2076($6) #L2
	sw $9 2580($6) #L4
	sw $9 2584($6) #L4
	sw $9 2588($6) #L4
	sw $9 3088($6) #L5
	sw $9 3092($6) #L5
	sw $9 3096($6) #L5
	sw $9 3100($6) #L5
	sw $9 3104($6) #L5
	sw $9 3604($6) #L6
	sw $9 3608($6) #L6
	sw $9 3612($6) #L6
	j desenha_melancia
	
ftela_pretaf1:
	lui $21, 0xffff    #ler teclado
	addi $10, $0, 32   #guardar espaço
	lui $8, 0x1001     #reinicar posição da memória
	lui $9, 0x0000     #preto
	addi $20, $0, 8192 #quantidade de vezes que vai pintar o fundo
testTelaPretaf1: 
		beq $20, $0, start_fase2
	        sw $9, 0($8)
	        addi $8, $8, 4
	        addi $20, $20, -1 
	        div $20 $8
	        mfhi $25
	        beq $25 $0 time_tela_pretaf1
	   vtf1: j testTelaPretaf1
	   
start_fase2:
	 lw $22, 4($21)
	 beq $22, $10, fase2
	 j start_fase2
time_tela_pretaf1:
		addi $24 $0 30000
	t1:
		beq $24 $0 vtf1
		nop
		addi $24 $24 -1
		j t1

	#Fim
fase2:	
	ori $27, $0, 0xe3413b # vermelho morango
	lui $8, 0x1001  
	sw $27 0($8)
	
	addi $2 $0 10
	syscall
	
#####################s#########################################
# função timer
timerf1:
	addi $15 $15 3500
	forT_f1:beq $15 $0 fimT_f1
		nop
		nop
		addi $15 $15 -1
		j forT_f1
	fimT_f1:
		jr $31

