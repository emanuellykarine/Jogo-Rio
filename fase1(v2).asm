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
# Registradores sendo usados:
#			    $15 -> variaveis para loops
#			    $9 até $14, $16 ate $20 -> cores
#			    $8, $7 e $6 -> espaço na memoria
#			    $21 -> tamanho da tela
#                          
# O passáro branco tem que ser do tamanho do espaço entre as paredes verdes, pra ele poder se locomover atrás do blue
# pq o blue é menor que o passáro branco no filme

fase1:lui $8, 0x1001	   # fundo
     lui $7, 0x1001	   # muros e gaiolas com passaros
     # lui $6, 0x1001	   # gaiola com passaros
     ori $9, $0, 0x141d29  # Azul escuro
     ori $10, $0, 0x546d8f # muros
     ori $11, $0, 0xb4b4b4 # Cinza da gaiola
     ori $12, $0, 0xfea3b1 # passaro da gaiola (rosa)
     ori $13, $0, 0xfff201 # passaro da gaiola (amarelo)
     ori $14, $0, 0xa8e61d # passaro da gaiola (verde)
     ori $16, $0, 0xfffffe # branco
     ori $17, $0, 0x736c73 # bicos
     ori $18, $0, 0x9c5b3c # patas
     ori $19, $0, 0xff7e00 # passaro da gaiola (laranja)
     ori $20, $0, 0x2a3340 # azul escuro para detalhes
     
     addi $21, $0, 8192    # Tamanho da tela toda
     addi $15 $0 16
FundoAzul: # Pinta todo o fundo azul
      beq $21, $0, MurosPretos_emL
      sw $9, 0($8)
      sw $9, 131084($8) # Salva para backup 
      addi $8, $8, 4
      addi $21, $21, -1
      j FundoAzul
##########################################################################
# Paredes
MurosPretos_emL:
      	parte_de_cima: 
      		beq $15 $0 fim_parte_cima
      		sw $10 640($7)  # parte de cima do L1
      		sw $10 832($7)  # parte de cima do L2
      		addi $7 $7 4
      		addi $15 $15 -1
      		j parte_de_cima
      	fim_parte_cima:
		addi $15 $0 8
	parte_laterais:
		beq $15 $0 fim_laterais
		sw $10 572($7)  # parte de cima do L1
      		sw $10 832($7)  # parte de cima do L2
      		
      		sw $10 27708($7)  # parte de cima do L1
      		sw $10 27968($7)  # parte de cima do L2
      		
      		addi $7 $7 512
      		addi $15 $15 -1
		j parte_laterais
	fim_laterais:
	addi $7 $7 0
jaula_central:
	addi $15 $0 24
	laterais_da_jaula: 
			beq $15 $0 fim_laterais_jaula
			sw $10 5180($7) # parte lateral esquerda da jaula 
			sw $10 5140($7) # parte lateral esquerda externa da jaula
			sw $10 5440($7) # parte lateral direita da jaula
			sw $10 5480($7) # parte lateral direita externa da jaula
			addi $7 $7 512
			addi $15 $15 -1
			j laterais_da_jaula
	fim_laterais_jaula:
	addi $15 $0 64
		for:    # for para voltar ao endereço incial das laterais da jaula
			beq $15 $0 fimfor
			addi $15 $15 -1
			addi $7 $7 -192
			j for
		fimfor:
			addi $15 $0 20
	parte_superior_da_jaula:
			beq $15 $0 fim_superior_da_jaula
			sw $10 5180($7) # parte lateral da jaula
			sw $10 5360($7)
			addi $7 $7 4
			addi $15 $15 -1
			j parte_superior_da_jaula
	fim_superior_da_jaula:
		addi $15 $0 20
		for2:   # for para voltar ao endereço incial das laterais da jaula
			beq $15 $0 fimfor2
			addi $15 $15 -1
			addi $7 $7 -4
			j for2
		fimfor2:
		addi $15 $0 66
		parte_inferior:
			beq $15 $0 fim_parte_superior_jaula
			sw $10 17468($7) # parte lateral da jaula
			addi $15 $15 -1
			addi $7 $7 4
			j parte_inferior
		fim_parte_superior_jaula: # parte superior borda preta
		lui $7, 0x1001
		addi $15 $0 256
		parte_superior_inferior:
				beq $15 $0 degrade
				sw $10 0($7)     # parte superior
				sw $20 512($7)   # parte superior degrade
				sw $20 31228($7) # parte inferior degrade
				sw $10 31740($7) # parte inferior
				
				addi $7 $7 4
				addi $15 $15 -1
				j parte_superior_inferior
		degrade:
			lui $7, 0x1001
			addi $15 $0 128
			for_degrade:
				beq $15 $0 fimdegrade
				sw $20 512($7)   # parte superior degrade
				sw $20 31228($7) # parte inferior degrade
				addi $7 $7 4
				addi $15 $15 -1
				j for_degrade
		fimdegrade:
		lui $7, 0x1001
		addi $15 $0 64
		partes_laterais:
			beq $15 $0 degrade_lateral
				sw $10 0($7)     # parte esquerda
				sw $10 508($7)   # parte direita
				addi $7 $7 512
				addi $15 $15 -1
				j partes_laterais
		degrade_lateral:
		lui $7, 0x1001
		addi $15 $0 60
		for_degrade_laterais:
				beq $15 $0 fimlaterais
				sw $20 516($7)     # parte esquerda degrade
				sw $20 1016($7)    # parte direita degrade
				addi $7 $7 512
				addi $15 $15 -1
				j for_degrade_laterais
		fimlaterais:
		addi $15 $0 10
		lui $8, 0x1001
		entrada_saida: 	beq $15 $0 fim_entrada_saida
				sw $9 13312($8)
				sw $9 13316($8)
				# sw $9 131084($8) # salva para bachup
				sw $9 13820($8)
				sw $9 13816($8) 
				# sw $9, 131084($8) # salva para bachup
				addi $8 $8 512
				addi $15 $15 -1
				j entrada_saida
		fim_entrada_saida:
	 	lui $7, 0x1001
		addi $15 $0 8	
murinho_frente_da_entrada_saida:
		beq $15 $0 fim_murinho
		sw $10 14900($7) # esquerda
		sw $10 15276($7) # esquerda
		addi $7 $7 4
		addi $15 $15 -1
		j murinho_frente_da_entrada_saida
	fim_murinho:
		lui $7, 0x1001
		addi $15 $0 8
	quadrados:
		parte_superior_quadrado:
			beq $15 $0 dentro_do_quadrado
			sw $10 3636($7) # Q1
			sw $10 5684($7)
			sw $10 4012($7) # Q2
			sw $10 6060($7)
			sw $10 28212($7)# Q3
			sw $10 26164($7)
			sw $10 26540($7)# Q4
			sw $10 28588($7) 
		
			addi $15 $15 -1
			addi $7 $7 4
			j parte_superior_quadrado
	dentro_do_quadrado:
		lui $7, 0x1001
		addi $15 $0 6	
		for_dentro_do_quadrado:
			beq $15 $0 parte_laterais_quadrado
			sw $20 4152($7) # Q1
			sw $20 4664($7) # Q1
			sw $20 5176($7) # Q1
			
			sw $20 4528($7) # Q2
			sw $20 5040($7) # Q2
			sw $20 5552($7) # Q2
			
			sw $20 26680($7)# Q3
			sw $20 27192($7)# Q3
			sw $20 27704($7)# Q3
			
			sw $20 27056($7)# Q4
			sw $20 27568($7)# Q4
			sw $20 28080($7)# Q4
			
			addi $15 $15 -1
			addi $7 $7 4
			j for_dentro_do_quadrado
	parte_laterais_quadrado:
		lui $7, 0x1001
		addi $15 $0 4
		for_laterais_quadrado:
			beq $15 $0 fim_quadrados
			sw $10 4148($7) # Q1
			sw $10 4176($7)
			
			sw $10 4524($7) # Q2
			sw $10 4552($7)
			
			sw $10 26164($7)# Q3
			sw $10 26192($7)
			
			sw $10 27052($7)# Q4
			sw $10 27080($7)
			
			addi $7 $7 512
			addi $15 $15 -1
			j for_laterais_quadrado
		fim_quadrados:
		lui $7, 0x1001
		addi $15 $0 24
		meio_superior:
			beq $15 $0 ffim_meio
			sw $10 4304($7)
			sw $10 26320($7)
			addi $7 $7 4
			addi $15 $15 -1
			j meio_superior
		ffim_meio:
#######################################################
# Gaiolas dentro da parte ccentral
	passaros_da_gaiola:
		# PASSÁRO ROSA
			sw $12 10804($7) # parte rosa da cabeça
			sw $12 10808($7) # parte rosa da cabeça
			sw $12 10812($7) # parte rosa da cabeça
			sw $12 10816($7) # parte rosa da cabeça
			sw $12 10820($7) # parte rosa da cabeça
			sw $12 11320($7) # parte rosa da cabeça
			sw $16 11324($7) # parte branca do olho
			sw $17 11332($7) # bico
			sw $17 11336($7) # bico
			sw $12 11836($7) # parte rosa da cabeça
			sw $12 11840($7) # parte rosa da cabeça
			sw $17 11844($7) # bico
			sw $17 11848($7) # bico
			sw $12 12348($7) # parte rosa corpo
			sw $12 12352($7) # parte rosa corpo
			sw $12 12356($7) # parte rosa corpo
			sw $12 12856($7) # parte rosa corpo
			sw $12 12860($7) # parte rosa corpo
			sw $12 12864($7) # parte rosa corpo
			sw $12 12868($7) # parte rosa corpo
			sw $12 13368($7) # parte rosa corpo
			sw $12 13372($7) # parte rosa corpo
			sw $12 13376($7) # parte rosa corpo
			sw $12 13380($7) # parte rosa corpo
			sw $12 13876($7) # parte rosa corpo
			sw $12 13880($7) # parte rosa corpo
			sw $12 13884($7) # parte rosa corpo
			sw $12 13888($7) # parte rosa corpo
			sw $12 13892($7) # parte rosa corpo
			sw $12 14392($7) # parte rosa corpo
			sw $18 14396($7) # pata
			sw $12 14400($7) # parte rosa corpo
			sw $18 14404($7) # pata
			sw $18 14916($7) # pata
			sw $18 14908($7) # pata
			
		# PASSÁRO AMARELO
			sw $13 16948($7) # parte rosa da cabeça
			sw $13 16952($7) # parte amarela da cabeça
			sw $13 16956($7) # parte amarela da cabeça
			sw $13 16960($7) # parte amarela da cabeça
			sw $13 16964($7) # parte amarela da cabeça
			sw $13 17464($7) # parte amarela da cabeça
			sw $16 17468($7) # parte branca do olho
			sw $17 17476($7) # bico
			sw $17 17480($7) # bico
			sw $13 17980($7) # parte amarela da cabeça
			sw $13 17984($7) # parte amarela da cabeça
			sw $17 17988($7) # bico
			sw $17 17992($7) # bico
			sw $13 18492($7) # parte amarela corpo
			sw $13 18496($7) # parte amarela corpo
			sw $13 18500($7) # parte amarela corpo
			sw $13 19000($7) # parte amarela corpo
			sw $13 19004($7) # parte amarela corpo
			sw $13 19008($7) # parte amarela corpo
			sw $13 19012($7) # parte amarela corpo
			sw $13 19512($7) # parte amarela corpo
			sw $13 19516($7) # parte amarela corpo
			sw $13 19520($7) # parte amarela corpo
			sw $13 19524($7) # parte amarela corpo
			sw $13 20020($7) # parte amarela corpo
			sw $13 20024($7) # parte amarela corpo
			sw $13 20028($7) # parte amarela corpo
			sw $13 20032($7) # parte amarela corpo
			sw $13 20036($7) # parte amarela corpo
			sw $18 20548($7) # pata
			sw $18 20540($7) # pata
			
		# PASSÁRO VERDE
			sw $14 11000($7) # parte verde da cabeça
			sw $14 11004($7) # parte verde da cabeça
			sw $14 11008($7) # parte verde da cabeça
			sw $14 11012($7) # parte verde da cabeça
			sw $14 11016($7) # parte verde da cabeça
			sw $17 11508($7) # bico
			sw $17 11512($7) # bico
			sw $16 11520($7) # parte branca olho
			sw $14 11524($7) # parte verde da cabeça
			sw $17 12020($7) # bico
			sw $17 12024($7) # bico
			sw $14 12028($7) # parte verde da cabeça
			sw $14 12032($7) # parte verde da cabeça
			sw $14 12036($7) # parte verde da cabeça
			sw $14 12540($7) # parte verde corpo
			sw $14 12544($7) # parte verde corpo
			sw $14 12548($7) # parte verde corpo
			sw $14 13052($7) # parte verde corpo
			sw $14 13056($7) # parte verde corpo
			sw $14 13060($7) # parte verde corpo
			sw $14 13064($7) # parte verde corpo
			sw $14 13564($7) # parte verde corpo
			sw $14 13568($7) # parte verde corpo
			sw $14 13572($7) # parte verde corpo
			sw $14 13576($7) # parte verde corpo
			sw $14 13580($7) # parte verde corpo
			sw $14 14076($7) # parte verde corpo
			sw $14 14080($7) # parte verde corpo
			sw $14 14084($7) # parte verde corpo
			sw $14 14088($7) # parte verde corpo
			sw $14 14092($7) # parte verde corpo
			sw $14 14096($7) # parte verde corpo
			sw $14 14588($7) # parte verde corpo
			sw $18 14592($7) # pata
			sw $14 14596($7) # parte verde corpo
			sw $18 14600($7) # pata
			sw $14 14604($7) # parte verde corpo
			sw $18 15104($7) # pata
			sw $18 15112($7) # pata
			
		# PASSÁRO LARANJA
			sw $19 17144($7) # parte laranja da cabeça
			sw $19 17148($7) # parte laranja da cabeça
			sw $19 17152($7) # parte laranja da cabeça
			sw $19 17156($7) # parte laranja da cabeça
			sw $19 17160($7) # parte laranja da cabeça
			sw $17 17652($7) # bico
			sw $17 17656($7) # bico
			sw $16 17664($7) # parte branca olho
			sw $19 17668($7) # parte laranja da cabeça
			sw $17 18164($7) # bico
			sw $17 18168($7) # bico
			sw $19 18172($7) # parte laranja da cabeça
			sw $19 18176($7) # parte laranja da cabeça
			sw $19 18180($7) # parte laranja da cabeça
			sw $19 18680($7) # parte laranja corpo
			sw $19 18684($7) # parte laranja corpo
			sw $19 18688($7) # parte laranja corpo
			sw $19 19192($7) # parte laranja corpo
			sw $19 19196($7) # parte laranja corpo
			sw $19 19200($7) # parte laranja corpo
			sw $19 19204($7) # parte laranja corpo
			sw $19 19704($7) # parte laranja corpo
			sw $19 19708($7) # parte laranja corpo
			sw $19 19712($7) # parte laranja corpo
			sw $19 19716($7) # parte laranja corpo
			sw $19 19720($7) # parte laranja corpo
			sw $19 20216($7) # parte laranja corpo
			sw $19 20220($7) # parte laranja corpo
			sw $19 20224($7) # parte laranja corpo
			sw $19 20228($7) # parte laranja corpo
			sw $19 20232($7) # parte laranja corpo
			sw $19 20236($7) # parte laranja corpo
			sw $18 20732($7) # parte laranja corpo
			sw $19 20736($7) # pata
			sw $18 20740($7) # parte laranja corpo
	Gaiolas:
		addi $15 $0 12
	partes_horizontais_da_gaiola:
			beq $15 $0 fimpartes_horizontais_da_gaiola
			sw $11 10280($7) # superior da gaiola do rosa
			sw $11 12840($7) # meio da gaiola do rosa
			sw $11 15400($7) # inferior da gaiola do rosa
			
			sw $11 10472($7) # superior da gaiola do verde
			sw $11 13032($7) # meio da gaiola do verde
			sw $11 15592($7) # inferior da gaiola do verde
			
			sw $11 16424($7) # superior da gaiola do amarelo
			sw $11 18984($7) # meio da gaiola do amarelo
			sw $11 21032($7) # inferor da gaiola do amarelo
			
			sw $11 16616($7) # superior da gaiola do laranja
			sw $11 19176($7) # meio da gaiola do laranja
			sw $11 21224($7) # inferior da gaiola do laranja
		
			addi $7 $7 4
			addi $15 $15 -1
			
			j partes_horizontais_da_gaiola
	fimpartes_horizontais_da_gaiola:
		addi $15 $0 10
		laterais_gaiola:
			beq $15 $0 fim_laterais_gaiola
			# gaiola 1
			sw $11 10232($7)
			sw $11 10244($7) # meio
			sw $11 10260($7) # meio
			sw $11 10276($7)
			# gaola 2
			sw $11 10424($7)
			sw $11 10436($7) # meio
			sw $11 10452($7) # meio
			sw $11 10468($7)
			# gaiola 3
			sw $11 16376($7)
			sw $11 16388($7) # meio
			sw $11 16404($7) # meio
			sw $11 16420($7)
			# gaiola 4
			sw $11 16568($7)
			sw $11 16580($7) # meio
			sw $11 16596($7) # meio
			sw $11 16612($7) 
			addi $7 $7 512
			addi $15 $15 -1
			j laterais_gaiola
		fim_laterais_gaiola:
#################################################################
# FRUTAS 
	frutas:
	lui $8, 0x1001
	ori $12, $0, 0xed1c24 # vermelho morango
	ori $19, $0, 0xa11017 # vermelho degrade mais escuro
	ori $13, $0, 0xe34d55 # vermelho degrade mais claro
	
	# $14 -> verde para folhas
		morango:
			sw $19 3544($8)
			sw $12 3548($8)
			sw $14 3036($8) # folha
			sw $14 3040($8) # folha
			sw $14 3044($8) # folha
			sw $12 3552($8)
			sw $12 3556($8)
			sw $12 3560($8)
			sw $19 4052($8)
			sw $13 4056($8)
			sw $12 4060($8)
			sw $12 4064($8)
			sw $12 4068($8)
			sw $13 4072($8)
			sw $12 4076($8)
			sw $19 4564($8)
			sw $12 4568($8)
			sw $12 4572($8)
			sw $13 4576($8)
			sw $12 4580($8)
			sw $12 4584($8)
			sw $12 4588($8)
			sw $19 5080($8)
			sw $12 5084($8)
			sw $13 5088($8)
			sw $12 5092($8)
			sw $12 5096($8)
			sw $19 5596($8)
			sw $12 5600($8)
			sw $13 5604($8)
			sw $19 6112($8)
	frutass:
	lui $8, 0x1001
	# $13 -> amarelo, $18 -> cacho
	ori $13, $0, 0xf7f2ad # amarelo degrade mais claro
	ori $19, $0, 0xfff34d # amarelo normal
	ori $12, $0, 0xa89d03 # amarelo degrade mais escuro
		banana:
			sw $18 28188($8) # cacho
			sw $18 28192($8) # cacho
			sw $18 28196($8) # cacho
			
			sw $12 28696($8)
			sw $19 28700($8)
			sw $19 28704($8)
			sw $19 28708($8)
			sw $19 28712($8)
			
			sw $12 29204($8)
			sw $19 29208($8)
			sw $12 29212($8)
			sw $13 29216($8)
			sw $12 29220($8)
			sw $19 29224($8)
			sw $12 29228($8)
			
			sw $12 29712($8)
			sw $19 29716($8)
			sw $19 29724($8)
			sw $12 29728($8)
			
			sw $19 29736($8)
			sw $19 29740($8)
			sw $12 29744($8)
			
			sw $12 30220($8)
			sw $19 30236($8)
			sw $19 30252($8)
			sw $19 30256($8)
			sw $12 30260($8)
