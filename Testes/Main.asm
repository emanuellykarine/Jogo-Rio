.data
# C# / Db	61
# D	62
# D# / Eb	63
# E / Fb	64
# E# / F	65
# F# / Gb	66
# G	67
# G# / Ab	68
# A	69
# A# / Bb	70
# B / Cb	71
# B# / C	72
# $a1: Duração
# $a2: Instrumento
# $a3: Volume
#  Load Byte -> carrega um byte da memória para um registrador.  Load Immediate -> carrega um valor constante (imediato) diretamente para um registrador.
    notas:  .byte 72 64 67 69 144 
    duracao: .word 1000  # 1000 ms de duração para cada nota 
    instrumento: .byte 96 # Ensemble
    prato: .byte 103
    volume: .byte 500  # Volume médio-alto


# .globl main

.text
#Parte 1 - Capa 
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

#Parte 2 - Fase 1 - PacBlue		
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
			
# frutas da funcao
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
		
     		# maca
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
p2f1: # desenha maca do lado esquerda superior
	beq $5 $0 desenho_bluef1
	addi $5 $5 -1
	lui $6, 0x1001
	ori $27, $0, 0xfa020c # vermelho maca
	ori $7, $0, 0x736637  # marrom
	
	j apaga_laranja
desenha_maca:
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
		j apaga_maca
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
	j desenha_maca

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
apaga_maca:
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
	lui $8, 0x1001     #reinicar posição da memoria
	lui $9, 0x0000     #preto
	addi $20, $0, 8192 #quantidade de vezes que vai pintar o fundo
testTelaPretaf1: 
		beq $20, $0, fase2
	        sw $9, 0($8)
	        addi $8, $8, 4
	        addi $20, $20, -1 
	        div $20 $8
	        mfhi $25
	        beq $25 $0 time_tela_pretaf1
	   vtf1: j testTelaPretaf1
	   
time_tela_pretaf1:
		addi $24 $0 30000
	t1:
		beq $24 $0 vtf1
		nop
		addi $24 $24 -1
		j t1

#####################s#########################################
# funcao timer
timerf1:
	addi $15 $15 5000
	forT_f1:beq $15 $0 fimT_f1
		nop
		nop
		addi $15 $15 -1
		j forT_f1
	fimT_f1:
		jr $31

#Parte 3 -  Fase 2 - Fight

fase2:	
        lui $8, 0x1001
	lui $7, 0x1001
	lui $6, 0x1001
        ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 825
fightCeu: beq $20, $0, fimFightCeu
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu 
fimFightCeu: ori $9, $0, 0xfbfffe #branco     
       	addi $20, $0, 831
      	addi $21, $0, 826
fightNuvemBr: beq $20, $21, fimFightNuvemBr
       	sw $9, 0($8)
       	sw $9, 32768($8) #copia do cenario
       	addi $8, $8, 4
       	addi $20, $20, -1
       	j fightNuvemBr
fimFightNuvemBr: ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 952
        addi $21, $0, 831
fightCeu1: beq $20, $21, fimFightCeu1
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu1
fimFightCeu1: ori $9, $0, 0xfbfffe #branco     
        addi $20, $0, 960
        addi $21, $0, 952
fightNuvemBr1: beq $20, $21, fimFightNuvemBr1
       	sw $9, 0($8)
       	sw $9, 32768($8) #copia do cenario
       	addi $8, $8, 4
       	addi $20, $20, -1
       	j fightNuvemBr1
fimFightNuvemBr1: ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1079
        addi $21, $0, 960
fightCeu2: beq $20, $21, fimFightCeu2
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu2
fimFightCeu2: ori $9, $0, 0xfbfffe #branco    
        addi $20, $0, 1091
        addi $21, $0, 1079
fightNuvemBr2: beq $20, $21, fimFightNuvemBr2
       	sw $9, 0($8)
       	sw $9, 32768($8) #copia do cenario
      	addi $8, $8, 4
       	addi $20, $20, -1
       	j fightNuvemBr2
fimFightNuvemBr2: ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1157
        addi $21, $0, 1091
fightCeu3:   beq $20, $21, fimFightCeu3
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu3
fimFightCeu3: ori $9, $0, 0xfbfffe #branco     
     	addi $20, $0, 1166
        addi $21, $0, 1157
fightNuvemBr3: beq $20, $21, fimFightNuvemBr3
       	sw $9, 0($8)
       	sw $9, 32768($8) #copia do cenario
       	addi $8, $8, 4
       	addi $20, $20, -1
       	j fightNuvemBr3
fimFightNuvemBr3: ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1209
        addi $21, $0, 1168
fightCeu4: beq $20, $21, fimFightCeu4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu4
fimFightCeu4: ori $9, $0, 0xfbfffe #branco    
        addi $20, $0, 1217
        addi $21, $0, 1209
fightNuvemBr4: beq $20, $21, fimFightNuvemBr4
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr4
fimFightNuvemBr4: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemBr5: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1288
        addi $21, $0, 1223
fightCeu5: beq $20, $21, fimFightCeu5
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu5
fimFightCeu5: ori $9, $0, 0x82dbda #azul nuvem
        addi $20, $0, 1296
        addi $21, $0, 1288
fightNuvemAz: beq $20, $21, fimFightNuvemAz
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz
fimFightNuvemAz: ori $9, $0, 0xfbfffe #branco
        addi $20, $0, 1305
        addi $21, $0, 1296
fightNuvemBr6: beq $20, $21, fimFightNuvemBr6
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr6
fimFightNuvemBr6: ori $9, $0, 0x62abd3 #azulceu
        addi $20, $0, 1333
        addi $21, $0, 1305
fightCeu6: beq $20, $21, fimFightCeu6
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu6
fimFightCeu6: ori $9, $0, 0xfbfffe #branco
        addi $20, $0, 1347
        addi $21, $0, 1333
fightNuvemBr7: beq $20, $21, fimFightNuvemBr7
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr7
fimFightNuvemBr7: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemBr8: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightCeu7: ori $9, $0, 0x62abd3 #azul ceu
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemBr9: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1417
        addi $21, $0, 1359
fightCeu8: beq $20, $21, fimFightCeu8
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu8
fimFightCeu8: ori $9, $0, 0x82dbda #azul nuvem
        addi $20, $0, 1429
        addi $21, $0, 1417
fightNuvemAz1: beq $20, $21, fimFightNuvemAz1
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz1
fimFightNuvemAz1: ori $9, $0, 0xfbfffe #branco
        addi $20, $0, 1434
        addi $21, $0, 1429
fightNuvemBr10: beq $20, $21, fimFightNuvemBr10
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr10
fimFightNuvemBr10: ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1460
        addi $21, $0, 1434
fightCeu9: beq $20, $21, fimFightCeu9
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu9
fimFightCeu9: ori $9, $0, 0xfbfffe #branco
        addi $20, $0, 1472
        addi $21, $0, 1460
fightNuvemBr11: beq $20, $21, fimFightNuvemBr11
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr11
fimFightNuvemBr11: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
        addi $20, $0, 1488
        addi $21, $0, 1476
fightNuvemBr12: beq $20, $21, fimFightNuvemBr12
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr12
fimFightNuvemBr12: ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1553
        addi $21, $0, 1488
fightCeu10: beq $20, $21, fimFightCeu10
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu10
fimFightCeu10: ori $9, $0, 0x82dbda #azul nuvem
        addi $20, $0, 1560
        addi $21, $0, 1553
fightNuvemAz2: beq $20, $21, fimFightNuvemAz2
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz2
fimFightNuvemAz2: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1584
        addi $21, $0, 1560
fightCeu11: beq $20, $21, fimFightCeu11
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu11
fimFightCeu11: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemAz3: ori $9, $0, 0x82dbda #azul nuvem
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemBr13: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
        addi $20, $0, 1605
        addi $21, $0, 1593
fightNuvemAz4: beq $20, $21, fimFightNuvemAz4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz4 
fimFightNuvemAz4: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemAz5: ori $9, $0, 0x82dbda #azul nuvem
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemBr14: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemAz6: ori $9, $0, 0x82dbda #azul nuvem
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemBr15: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x62abd3 #azulceu
        addi $20, $0, 1655
        addi $21, $0, 1617
fightCeu12: beq $20, $21, fimFightCeu12
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu12
fimFightCeu12: ori $9, $0, 0xfbfffe #branco
         addi $20, $0, 1665
         addi $21, $0, 1655
fightNuvemBr16: beq $20, $21, fimFightNuvemBr16
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr16
fimFightNuvemBr16: ori $9, $0, 0x62abd3 #azul ceu
         addi $20, $0, 1700
         addi $21, $0, 1655
fightCeu13: beq $20, $21, fimFightCeu13
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu13
fimFightCeu13: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 1724
        addi $21, $0, 1704
fightNuvemAz7: beq $20, $21, fimFightNuvemAz7
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz7
fimFightNuvemAz7: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemAz8: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemBr17: ori $9, $0, 0xfbfffe #branco 
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemAz9: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemBr18: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1766
        addi $21, $0, 1736
fightCeu14: beq $20, $21, fimFightCeu14
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu14
fimFightCeu14: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 1775
        addi $21, $0, 1766
fightNuvemBr19: beq $20, $21, fimFightNuvemBr19
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr19
fimFightNuvemBr19: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 1784
        addi $21, $0, 1775
fightNuvemAz10: beq $20, $21, fimFightNuvemAz10
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz10
fimFightNuvemAz10: ori $9, $0, 0x62abd3 #azul ceu 
        addi $20, $0, 1828
        addi $21, $0, 1785
fightCeu15: beq $20, $21, fimFightCeu15
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu15
fimFightCeu15: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 1840
        addi $21, $0, 1828
fightNuvemAz11: beq $20, $21, fimFightNuvemAz11
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz11
fimFightNuvemAz11: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 1852
        addi $21, $0, 1842
fightNuvemAz12: beq $20, $21, fimFightNuvemAz12
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz12
fimFightNuvemAz12: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 1859
        addi $21, $0, 1853
fightNuvemAz13: beq $20, $21, fimFightNuvemAz13
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz13
fimFightNuvemAz13: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4 
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4 
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4 
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemAz14: ori $9, $0, 0x82dbda #azul nuvem
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4 
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemBr20: ori $9, $0, 0xfbfffe #branco
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4  
fightNuvemAz15: ori $9, $0, 0x82dbda #azul nuvem
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4 
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1891
        addi $21, $0, 1868
fightCeu16: beq $20, $21, fimFightCeu16
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu16
fimFightCeu16: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 1903
        addi $21, $0, 1891
fightNuvemAz16: beq $20, $21, fimFightNuvemAz16
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz16
fimFightNuvemAz16: ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1912
        addi $21, $0, 1903
fightCeu17: beq $20, $21, fimFightCeu17
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu17
fimFightCeu17: ori $9, $0, 0x82dbda #azul nuvem
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4 
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 1956
        addi $21, $0, 1915
fightCeu18: beq $20, $21, fimFightCeu18
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu18
fimFightCeu18: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 1961
        addi $21, $0, 1956
fightNuvemBr21: beq $20, $21, fimFightNuvemBr21
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr21
fimFightNuvemBr21: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 1969
        addi $21, $0, 1961
fightNuvemAz17: beq $20, $21, fimFightNuvemAz17
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz17
fimFightNuvemAz17: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 1975
        addi $21, $0, 1969
fightNuvemBr22: beq $20, $21, fimFightNuvemBr22
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr22
fimFightNuvemBr22: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 1981
        addi $21, $0, 1975
fightNuvemAz18: beq $20, $21, fimFightNuvemAz18
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz18
fimFightNuvemAz18: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 1987
        addi $21, $0, 1981
fightNuvemBr23: beq $20, $21, fimFightNuvemBr23
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr23
fimFightNuvemBr23: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 1997
        addi $21, $0, 1987
fightNuvemAz19: beq $20, $21, fimFightNuvemAz19
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz19
fimFightNuvemAz19: ori $9, $0, 0x62abd3 #azul ceu
         addi $20, $0, 2020
         addi $21, $0, 1997
fightCeu19: beq $20, $21, fimFightCeu19
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu19
fimFightCeu19: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2030
        addi $21, $0, 2020
fightNuvemAz20: beq $20, $21, fimFightNuvemAz20
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz20
fimFightNuvemAz20: ori $9, $0, 0x62abd3 #azul ceu
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2044
        addi $21, $0, 2031
fightNuvemAz21: beq $20, $21, fimFightNuvemAz21
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz21
fimFightNuvemAz21: ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 2083
        addi $21, $0, 2044
fightCeu20: beq $20, $21, fimFightCeu20
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu20
fimFightCeu20: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2101
        addi $21, $0, 2086
fightNuvemAz22: beq $20, $21, fimFightNuvemAz22
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz22
fimFightNuvemAz22: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2119
        addi $21, $0, 2104
fightNuvemAz23: beq $20, $21, fimFightNuvemAz23
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz23
fimFightNuvemAz23: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 2125
        addi $21, $0, 2119
fightNuvemBr24: beq $20, $21, fimFightNuvemBr24
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr24
fimFightNuvemBr24: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 2155
        addi $21, $0, 2127
fightCeu21: beq $20, $21, fimFightCeu21
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu21
fimFightCeu21: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2183
        addi $21, $0, 2155
fightNuvemAz24: beq $20, $21, fimFightNuvemAz24
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz24
fimFightNuvemAz24: ori $9, $0, 0x62abd3 #azul ceu
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2198
        addi $21, $0, 2187
fightNuvemAz25: beq $20, $21, fimFightNuvemAz25
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz25
fimFightNuvemAz25: ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 2209
        addi $21, $0, 2198
fightCeu22: beq $20, $21, fimFightCeu22
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu22
fimFightCeu22: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2257
        addi $21, $0, 2212
fightNuvemAz26: beq $20, $21, fimFightNuvemAz26
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz26
fimFightNuvemAz26: ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 2282
        addi $21, $0, 2257
fightCeu23: beq $20, $21, fimFightCeu23
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu23
fimFightCeu23: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2299
        addi $21, $0, 2282
fightNuvemAz27: beq $20, $21, fimFightNuvemAz27
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz27
fimFightNuvemAz27: ori $9, $0, 0x62abd3 #azul ceu
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
fightNuvemAz28: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightCeu24: ori $9, $0, 0x62abd3 #azul ceu
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightNuvemAz29: ori $9, $0, 0x82dbda #azul nuvem
 	sw $9, 0($8)
 	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightCeu25: ori $9, $0, 0x62abd3 #azul ceu
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2334
        addi $21, $0, 2314
fightNuvemAz30: beq $20, $21, fimFightNuvemAz30
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz30
fimFightNuvemAz30: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 2341
        addi $21, $0, 2334
fightNuvemBr25: beq $20, $21, fimFightNuvemBr25
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr25
fimFightNuvemBr25: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2385
        addi $21, $0, 2341
fightNuvemAz31: beq $20, $21, fimFightNuvemAz31
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz31
fimFightNuvemAz31: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 2391
        addi $21, $0, 2385
fightNuvemBr26: beq $20, $21, fimFightNuvemBr26
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr26
fimFightNuvemBr26: ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 2407
        addi $21, $0, 2391
fightCeu26: beq $20, $21, fimFightCeu26
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu26
fimFightCeu26: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2438
        addi $21, $0, 2407
fightNuvemAz32: beq $20, $21, fimFightNuvemAz32
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz32 
fimFightNuvemAz32: ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 2417
        addi $21, $0, 2407
fightCeu27: beq $20, $21, fimFightCeu27
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu27
fimFightCeu27: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2431
        addi $21, $0, 2417
fightNuvemAz33: beq $20, $21, fimFightNuvemAz33
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz33 
fimFightNuvemAz33: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2483
        addi $21, $0, 2434
fightNuvemAz34: beq $20, $21, fimFightNuvemAz34
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz34
fimFightNuvemAz34: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 2494
        addi $21, $0, 2483
fightNuvemBr27: beq $20, $21, fimFightNuvemBr27
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr27
fimFightNuvemBr27: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2506
        addi $21, $0, 2494
fightNuvemAz35: beq $20, $21, fimFightNuvemAz35
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz35
fimFightNuvemAz35: ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 2535
        addi $21, $0, 2506
fightCeu28: beq $20, $21, fimFightCeu28
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu28
fimFightCeu28: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2545
        addi $21, $0, 2535
fightNuvemAz36: beq $20, $21, fimFightNuvemAz36
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz36
fimFightNuvemAz36: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 2551
        addi $21, $0, 2545
fightNuvemBr28: beq $20, $21, fimFightNuvemBr28
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr28
fimFightNuvemBr28: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4		
	ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 2559
        addi $21, $0, 2553
fightNuvemBr29: beq $20, $21, fimFightNuvemBr29
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr29
fimFightNuvemBr29: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2620
        addi $21, $0, 2559
fightNuvemAz37: beq $20, $21, fimFightNuvemAz37
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz37
fimFightNuvemAz37: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 2628
        addi $21, $0, 2620
fightNuvemBr30: beq $20, $21, fimFightNuvemBr30
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr30
fimFightNuvemBr30: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2654
        addi $21, $0, 2628
fightNuvemAz38: beq $20, $21, fimFightNuvemAz38
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz38
fimFightNuvemAz38: ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 2662
        addi $21, $0, 2654
fightCeu29: beq $20, $21, fimFightCeu29
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu29
fimFightCeu29: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
fightCeu30: ori $9, $0, 0x62abd3 #azul ceu
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2679
        addi $21, $0, 2667
fightNuvemAz39: beq $20, $21, fimFightNuvemAz39
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz39
fimFightNuvemAz39: ori $9, $0, 0xfbfffe #branco
 	sw $9, 0($8)
 	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4 
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2712
        addi $21, $0, 2690
fightNuvemAz40: beq $20, $21, fimFightNuvemAz40
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz40
fimFightNuvemAz40: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 2726
        addi $21, $0, 2712
fightNuvemBr31: beq $20, $21, fimFightNuvemBr31
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr31
fimFightNuvemBr31: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2744
        addi $21, $0, 2726
fightNuvemAz41: beq $20, $21, fimFightNuvemAz41
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz41
fimFightNuvemAz41: ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 2765
        addi $21, $0, 2744
fightCeu31: beq $20, $21, fimFightCeu31
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu31
fimFightCeu31: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2804
        addi $21, $0, 2765
fightNuvemAz42: beq $20, $21, fimFightNuvemAz42
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz42
fimFightNuvemAz42: ori $9, $0, 0x62abd3 #azul ceu 
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem 
	addi $20, $0, 2850
        addi $21, $0, 2808
fightNuvemAz43: beq $20, $21, fimFightNuvemAz43
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz43
fimFightNuvemAz43: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 2857
        addi $21, $0, 2850
fightNuvemBr32: beq $20, $21, fimFightNuvemBr32
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr32
fimFightNuvemBr32: ori $9, $0, 0x82dbda #azul nuvem 
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem 
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 2898
        addi $21, $0, 2868
fightCeu32: beq $20, $21, fimFightCeu32
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu32
fimFightCeu32: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4 
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 2947
        addi $21, $0, 2908
fightNuvemAz44: beq $20, $21, fimFightNuvemAz44
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz44
fimFightNuvemAz44: ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 2957
        addi $21, $0, 2947
fightCeu33: beq $20, $21, fimFightCeu33
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu33
fimFightCeu33: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 3023
        addi $21, $0, 2957
fightNuvemAz45: beq $20, $21, fimFightNuvemAz45
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz45
fimFightNuvemAz45: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4  
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 3034
        addi $21, $0, 3028
fightNuvemAz46: beq $20, $21, fimFightNuvemAz46
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz46
fimFightNuvemAz46: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 3070
        addi $21, $0, 3038
fightNuvemAz47: beq $20, $21, fimFightNuvemAz47
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz47
fimFightNuvemAz47: ori $9, $0, 0x62abd3 #azul ceu
	addi $20, $0, 3080
        addi $21, $0, 3070
fightCeu34: beq $20, $21, fimFightCeu34
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightCeu34
fimFightCeu34: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 3190
        addi $21, $0, 3080
fightNuvemAz48: beq $20, $21, fimFightNuvemAz48
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz48
fimFightNuvemAz48: ori $9, $0, 0xfbfffe #branco 
	addi $20, $0, 3196
        addi $21, $0, 3190
fightNuvemBr33: beq $20, $21, fimFightNuvemBr33
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr33
fimFightNuvemBr33: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 3256
        addi $21, $0, 3196
fightNuvemAz49: beq $20, $21, fimFightNuvemAz49
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz49
fimFightNuvemAz49: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 3266
        addi $21, $0, 3256
fightNuvemBr34: beq $20, $21, fimFightNuvemBr34
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr34
fimFightNuvemBr34: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 3313
        addi $21, $0, 3266
fightNuvemAz50: beq $20, $21, fimFightNuvemAz50
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz50 
fimFightNuvemAz50: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 3327
        addi $21, $0, 3313
fightNuvemBr35: beq $20, $21, fimFightNuvemBr35
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr35 	
fimFightNuvemBr35: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 3380
        addi $21, $0, 3334
fightNuvemAz51: beq $20, $21, fimFightNuvemAz51
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz51 	
fimFightNuvemAz51: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 3387
        addi $21, $0, 3380
fightNuvemBr36: beq $20, $21, fimFightNuvemBr36
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr36
fimFightNuvemBr36: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 3398
        addi $21, $0, 3391
fightNuvemBr37: beq $20, $21, fimFightNuvemBr37
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr37
fimFightNuvemBr37: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 3438
        addi $21, $0, 3398
fightNuvemAz52: beq $20, $21, fimFightNuvemAz52
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz52
fimFightNuvemAz52: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 3445
        addi $21, $0, 3438
fightNuvemBr38: beq $20, $21, fimFightNuvemBr38
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr38
fimFightNuvemBr38: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 3453
        addi $21, $0, 3445
fightNuvemAz53: beq $20, $21, fimFightNuvemAz53
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz53
fimFightNuvemAz53: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 3459
        addi $21, $0, 3453
fightNuvemBr39: beq $20, $21, fimFightNuvemBr39
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr39
fimFightNuvemBr39: ori $9, $0, 0x82dbda #azul nuvem
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 3467
        addi $21, $0, 3461
fightNuvemBr40: beq $20, $21, fimFightNuvemBr40
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr40
fimFightNuvemBr40: ori $9, $0, 0x82dbda #azul nuvem 
	addi $20, $0, 3505
        addi $21, $0, 3467
fightNuvemAz54: beq $20, $21, fimFightNuvemAz54
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz54
fimFightNuvemAz54: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 3510
        addi $21, $0, 3505
fightNuvemBr41: beq $20, $21, fimFightNuvemBr41
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr41
fimFightNuvemBr41: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 3518
        addi $21, $0, 3510
fightNuvemAz55: beq $20, $21, fimFightNuvemAz55
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz55 
fimFightNuvemAz55: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 3530
        addi $21, $0, 3518
fightNuvemBr42: beq $20, $21, fimFightNuvemBr42
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemBr42 
fimFightNuvemBr42: ori $9, $0, 0x82dbda #azul nuvem
	addi $20, $0, 4321
        addi $21, $0, 3530
fightNuvemAz56: beq $20, $21, fimFightNuvemAz56
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightNuvemAz56
#Mar aberto ----------------------------------------------------
fimFightNuvemAz56: ori $9, $0, 0x0a6f98 #azul mar horizonte
	addi $20, $0, 4577
        addi $21, $0, 4321
fightHorizonte: beq $20, $21, fimFightHorizonte
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightHorizonte
fimFightHorizonte: ori $9, $0, 0x0f99c9 #azul mar escuro
	addi $20, $0, 4833
        addi $21, $0, 4577
fightMar: beq $20, $21, fimFightMar
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar
fimFightMar: ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 4840
        addi $21, $0, 4833
fightMar1: beq $20, $21, fimFightMar1
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar1
fimFightMar1: ori $9, $0, 0x0f99c9 #azul mar escuro
	addi $20, $0, 4846
        addi $21, $0, 4840
fightMar2: beq $20, $21, fimFightMar2
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar2 
fimFightMar2: ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4 
	ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4 
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 4857
        addi $21, $0, 4851
fightMar3: beq $20, $21, fimFightMar3
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar3 
fimFightMar3: ori $9, $0, 0x0f99c9 #azul mar escuro
	addi $20, $0, 4863
        addi $21, $0, 4857
fightMar4: beq $20, $21, fimFightMar4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar4  
fimFightMar4: ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x0f99c9 #azul mar escuro
	addi $20, $0, 4874
        addi $21, $0, 4867
fightMar5: beq $20, $21, fimFightMar5
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar5   
fimFightMar5: ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 4894
        addi $21, $0, 4874
fightMar6: beq $20, $21, fimFightMar6
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar6   
fimFightMar6: ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 4910
        addi $21, $0, 4898
fightMar7: beq $20, $21, fimFightMar7
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar7   
fimFightMar7: ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 4933
        addi $21, $0, 4921
fightMar8: beq $20, $21, fimFightMar8
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar8 
fimFightMar8: ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x0f99c9 #azul mar escuro
	addi $20, $0, 4956
        addi $21, $0, 4940
fightMar9: beq $20, $21, fimFightMar9
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar9 
fimFightMar9: ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 4965
        addi $21, $0, 4956
fightMar10: beq $20, $21, fimFightMar10
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar10  
fimFightMar10: ori $9, $0, 0x0f99c9 #azul mar escuro
	addi $20, $0, 4972
        addi $21, $0, 4965
fightMar11: beq $20, $21, fimFightMar11
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar11 
fimFightMar11: ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 4979
        addi $21, $0, 4972
fightMar12: beq $20, $21, fimFightMar12
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar12 
fimFightMar12: ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4  
	ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4  
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 5018
        addi $21, $0, 5003
fightMar13: beq $20, $21, fimFightMar13
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar13
fimFightMar13: ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 5033
        addi $21, $0, 5022
fightMar14: beq $20, $21, fimFightMar14
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar14
fimFightMar14: ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 5057
        addi $21, $0, 5045
fightMar15: beq $20, $21, fimFightMar15
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar15
fimFightMar15: ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 5074
        addi $21, $0, 5062
fightMar16: beq $20, $21, fimFightMar16
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar16
fimFightMar16: ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x0f99c9 #azul mar escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 5596
        addi $21, $0, 5085
fightMar17: beq $20, $21, fimFightMar17
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar17
fimFightMar17: ori $9, $0, 0xaad770 #verde claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 5720
        addi $21, $0, 5601
fightMar18: beq $20, $21, fimFightMar18
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar18
fimFightMar18: ori $9, $0, 0xaad770 #verde claro
	addi $20, $0, 5727
        addi $21, $0, 5720
fightPedra: beq $20, $21, fimFightPedra
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra
fimFightPedra: ori $9, $0, 0x45632f #verde escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        addi $8, $8, 4
#Praia--------------------------------------------
	ori $9, $0, 0x7b7b7b #cinza claro 
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 5845
        addi $21, $0, 5733
fightMar19: beq $20, $21, fimFightMar19
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar19
fimFightMar19: ori $9, $0, 0xaad770 #verde claro
	addi $20, $0, 5852
        addi $21, $0, 5845
fightPedra1: beq $20, $21, fimFightPedra1
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra1
fimFightPedra1: ori $9, $0, 0x45632f #verde escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x444442 #cinza escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x7b7b7b #cinza claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 5878
        addi $21, $0, 5864
fightMar20: beq $20, $21, fimFightMar20
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar20
fimFightMar20: ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4	
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 5896
        addi $21, $0, 5887
fightMar21: beq $20, $21, fimFightMar21
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar21
fimFightMar21: ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 5912
        addi $21, $0, 5900
fightMar22: beq $20, $21, fimFightMar22
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar22
fimFightMar22: ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 5940
        addi $21, $0, 5928
fightMar23: beq $20, $21, fimFightMar23
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar23
fimFightMar23: ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 5960
        addi $21, $0, 5953
fightMar24: beq $20, $21, fimFightMar24
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar24
fimFightMar24: ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 5972
        addi $21, $0, 5960
fightMar25: beq $20, $21, fimFightMar25
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar25
fimFightMar25: ori $9, $0, 0xaad770 #verde claro
	addi $20, $0, 5979
        addi $21, $0, 5972
fightPedra2: beq $20, $21, fimFightPedra2
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra2
fimFightPedra2: ori $9, $0, 0x45632f #verde escuro
	addi $20, $0, 5985
        addi $21, $0, 5979
fightPedra3: beq $20, $21, fimFightPedra3
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra3
fimFightPedra3: ori $9, $0, 0x444442 #cinza escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x7b7b7b #cinza claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6003
        addi $21, $0, 5993
fightMar26: beq $20, $21, fimFightMar26
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar26
fimFightMar26: ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6025
        addi $21, $0, 6013
fightMar27: beq $20, $21, fimFightMar27
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar27
fimFightMar27: ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 6042
        addi $21, $0, 6025
fightMar28: beq $20, $21, fimFightMar28
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar28
fimFightMar28: ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6048
        addi $21, $0, 6042
fightMar29: beq $20, $21, fimFightMar29
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar29
fimFightMar29: ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6063
        addi $21, $0, 6053
fightMar30: beq $20, $21, fimFightMar30
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar30
fimFightMar30: ori $9, $0, 0x31c3da #azul mar medio
	addi $20, $0, 6076
        addi $21, $0, 6063
fightMar31: beq $20, $21, fimFightMar31
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar31
fimFightMar31: ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x31c3da #azul mar medio
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xaad770 #verde claro
	addi $20, $0, 6103
        addi $21, $0, 6096
fightPedra4: beq $20, $21, fimFightPedra4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra4
fimFightPedra4: ori $9, $0, 0x45632f #verde escuro
	addi $20, $0, 6110
        addi $21, $0, 6103
fightPedra5: beq $20, $21, fimFightPedra5
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra5
fimFightPedra5: ori $9, $0, 0x444442 #cinza escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x7b7b7b #cinza claro
	addi $20, $0, 6125
        addi $21, $0, 6115
fightPedra6: beq $20, $21, fimFightPedra6
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra6
fimFightPedra6: ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6223
        addi $21, $0, 6125
fightMar32: beq $20, $21, fimFightMar32
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar32
fimFightMar32: ori $9, $0, 0xaad770 #verde claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x45632f #verde escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x7b7b7b #cinza claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x444442 #cinza escuro
	addi $20, $0, 6247
        addi $21, $0, 6237
fightPedra7: beq $20, $21, fimFightPedra7
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra7
fimFightPedra7: ori $9, $0, 0x7b7b7b #cinza claro
	addi $20, $0, 6254
        addi $21, $0, 6247
fightPedra8: beq $20, $21, fimFightPedra8
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra8
fimFightPedra8: ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6260
        addi $21, $0, 6254
fightMar33: beq $20, $21, fimFightMar33
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar33
fimFightMar33: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6266
        addi $21, $0, 6260
fightEspuma: beq $20, $21, fimFightEspuma
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma   
fimFightEspuma: ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6296
        addi $21, $0, 6266
fightMar34: beq $20, $21, fimFightMar34
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar34 
fimFightMar34: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6306
        addi $21, $0, 6300
fightEspuma1: beq $20, $21, fimFightEspuma1
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma1
fimFightEspuma1:ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6340
        addi $21, $0, 6306
fightMar35: beq $20, $21, fimFightMar35
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar35
fimFightMar35: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6346
        addi $21, $0, 6340
fightEspuma2: beq $20, $21, fimFightEspuma2
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma2
fimFightEspuma2: ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6351
        addi $21, $0, 6346
fightMar36: beq $20, $21, fimFightMar36
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar36
fimFightMar36: ori $9, $0, 0xaad770 #verde claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x45632f #verde escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x7b7b7b #cinza claro
	addi $20, $0, 6366
        addi $21, $0, 6356
fightPedra9: beq $20, $21, fimFightPedra9
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra9
fimFightPedra9: ori $9, $0, 0x444442 #cinza escuro
	addi $20, $0, 6376
        addi $21, $0, 6366
fightPedra10: beq $20, $21, fimFightPedra10
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra10
fimFightPedra10: ori $9, $0, 0x7b7b7b #cinza claro
	addi $20, $0, 6372
        addi $21, $0, 6366
fightPedra11: beq $20, $21, fimFightPedra11
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra11
fimFightPedra11: ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4 
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6384
        addi $21, $0, 6378
fightMar37: beq $20, $21, fimFightMar37
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar37
fimFightMar37: ori $9, $0, 0xfbfffe #branco 
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
 	sw $9, 0($8)
 	sw $9, 32768($8) #copia do cenario
 	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6401
        addi $21, $0, 6391
fightMar38: beq $20, $21, fimFightMar38
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar38
fimFightMar38: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6416
        addi $21, $0, 6403
fightMar39: beq $20, $21, fimFightMar39
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar39
fimFightMar39: ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6442
        addi $21, $0, 6428
fightMar40: beq $20, $21, fimFightMar40
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar40
fimFightMar40: ori $9, $0, 0xfbfffe #branco
 	sw $9, 0($8)
 	sw $9, 32768($8) #copia do cenario
 	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6453
        addi $21, $0, 6445
fightMar41: beq $20, $21, fimFightMar41
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar41
fimFightMar41: ori $9, $0, 0xfbfffe #branco
 	sw $9, 0($8)
 	sw $9, 32768($8) #copia do cenario
 	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6469 
        addi $21, $0, 6458
fightMar42: beq $20, $21, fimFightMar42
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar42
fimFightMar42: ori $9, $0, 0xaad770 #verde claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x45632f #verde escuro 
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x7b7b7b #cinza claro
	addi $20, $0, 6481
        addi $21, $0, 6473
fightPedra12: beq $20, $21, fimFightPedra12
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra12
fimFightPedra12: ori $9, $0, 0x444442 #cinza escuro
	addi $20, $0, 6494
        addi $21, $0, 6481
fightPedra13: beq $20, $21, fimFightPedra13
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra13
fimFightPedra13: ori $9, $0, 0x7b7b7b #cinza claro
	addi $20, $0, 6501
        addi $21, $0, 6494
fightPedra14: beq $20, $21, fimFightPedra14
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra14
fimFightPedra14: ori $9, $0, 0xf2d06c #areia molhada
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
 	sw $9, 0($8)
 	sw $9, 32768($8) #copia do cenario
 	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xf2d06c #areia molhada
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
 	sw $9, 0($8)
 	sw $9, 32768($8) #copia do cenario
 	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro 
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6527
        addi $21, $0, 6517
fightEspuma3: beq $20, $21, fimFightEspuma3
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma3
fimFightEspuma3: ori $9, $0, 0x5bdfe1 #azul mar claro 
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	addi $20, $0, 6546
        addi $21, $0, 6533
fightMar43: beq $20, $21, fimFightMar43
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightMar43
fimFightMar43: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6566
        addi $21, $0, 6546
fightEspuma4: beq $20, $21, fimFightEspuma4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma4
fimFightEspuma4: ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6579
        addi $21, $0, 6571
fightEspuma5: beq $20, $21, fimFightEspuma5
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma5
fimFightEspuma5: ori $9, $0, 0xf2d06c #areia molhada
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xf2d06c #areia molhada
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xaad770 #verde claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x45632f #verde escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x7b7b7b #cinza claro
	addi $20, $0, 6605
        addi $21, $0, 6597
fightPedra15: beq $20, $21, fimFightPedra15
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra15
fimFightPedra15: ori $9, $0, 0x444442 #cinza escuro
	addi $20, $0, 6622
        addi $21, $0, 6605
fightPedra16: beq $20, $21, fimFightPedra16
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra16
fimFightPedra16: ori $9, $0, 0x7b7b7b #cinza claro
	addi $20, $0, 6628
        addi $21, $0, 6622
fightPedra17: beq $20, $21, fimFightPedra17
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra17
fimFightPedra17: ori $9, $0, 0xf2d06c #areia molhada
	addi $20, $0, 6643
        addi $21, $0, 6628
fightAreia: beq $20, $21, fimFightAreia
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia
fimFightAreia: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6653
        addi $21, $0, 6643
fightEspuma6: beq $20, $21, fimFightEspuma6
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma6
fimFightEspuma6: ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6674
        addi $21, $0, 6659
fightEspuma7: beq $20, $21, fimFightEspuma7
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma7 
fimFightEspuma7: ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6692
        addi $21, $0, 6682
fightEspuma8: beq $20, $21, fimFightEspuma8
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma8 
fimFightEspuma8: ori $9, $0, 0x5bdfe1 #azul mar claro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6704
        addi $21, $0, 6694
fightEspuma9: beq $20, $21, fimFightEspuma9
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma9
fimFightEspuma9: ori $9, $0, 0xf2d06c #areia molhada
	addi $20, $0, 6722
        addi $21, $0, 6704
fightAreia1: beq $20, $21, fimFightAreia1
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia1
fimFightAreia1: ori $9, $0, 0x45632f #verde escuro
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0x7b7b7b #cinza claro
	addi $20, $0, 6732
        addi $21, $0, 6724
fightPedra18: beq $20, $21, fimFightPedra18
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra18
fimFightPedra18: ori $9, $0, 0x444442 #cinza escuro
	addi $20, $0, 6757
        addi $21, $0, 6732
fightPedra19: beq $20, $21, fimFightPedra19
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra19
fimFightPedra19: ori $9, $0, 0xfce7b0 #areia seca
	addi $20, $0, 6767
        addi $21, $0, 6757
fightAreia2: beq $20, $21, fimFightAreia2
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia2
fimFightAreia2: ori $9, $0, 0xf2d06c #areia molhada
	addi $20, $0, 6781
        addi $21, $0, 6767
fightAreia3: beq $20, $21, fimFightAreia3
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia3
fimFightAreia3: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6795
        addi $21, $0, 6781
fightEspuma10: beq $20, $21, fimFightEspuma10
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma10
fimFightEspuma10: ori $9, $0, 0xf2d06c #areia molhada
	addi $20, $0, 6802
        addi $21, $0, 6795
fightAreia4: beq $20, $21, fimFightAreia4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia4
fimFightAreia4: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6817
        addi $21, $0, 6802
fightEspuma11: beq $20, $21, fimFightEspuma11
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma11
fimFightEspuma11: ori $9, $0, 0xf2d06c #areia molhada
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6829
        addi $21, $0, 6820
fightEspuma12: beq $20, $21, fimFightEspuma12
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightEspuma12
fimFightEspuma12: ori $9, $0, 0xf2d06c #areia molhada
	addi $20, $0, 6836
        addi $21, $0, 6829
fightAreia5: beq $20, $21, fimFightAreia5
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia5
fimFightAreia5: ori $9, $0, 0xfce7b0 #areia seca
	addi $20, $0, 6849
        addi $21, $0, 6836
fightAreia6: beq $20, $21, fimFightAreia6
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia6
fimFightAreia6: ori $9, $0, 0x444442 #cinza escuro
	addi $20, $0, 6869
        addi $21, $0, 6849
fightPedra20: beq $20, $21, fimFightPedra20
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightPedra20	
fimFightPedra20: ori $9, $0, 0xfce7b0 #areia seca
	addi $20, $0, 6898
        addi $21, $0, 6869
fightAreia7: beq $20, $21, fimFightAreia7
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia7	
fimFightAreia7: ori $9, $0, 0xf2d06c #areia molhada
	addi $20, $0, 6961
        addi $21, $0, 6898
fightAreia8: beq $20, $21, fimFightAreia8
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia8
fimFightAreia8: ori $9, $0, 0xfce7b0 #areia seca
	addi $20, $0, 6937
        addi $21, $0, 6861
fightAreia9: beq $20, $21, fimFightAreia9
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia9
fimFightAreia9: ori $9, $0, 0xf2d06c #areia molhada
	addi $20, $0, 6949
        addi $21, $0, 6937
fightAreia10: beq $20, $21, fimFightAreia10
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia10
fimFightAreia10: ori $9, $0, 0xfce7b0 #areia seca
	addi $20, $0, 6960
        addi $21, $0, 6949
fightAreia11: beq $20, $21, fimFightAreia11
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia11
fimFightAreia11: ori $9, $0, 0xf2d06c #areia molhada
	addi $20, $0, 6975
        addi $21, $0, 6960
fightAreia12: beq $20, $21, fimFightAreia12
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia12
fimFightAreia12: ori $9, $0, 0xfce7b0 #areia seca
	sw $9, 0($8)
	sw $9, 32768($8) #copia do cenario
	sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
	ori $9, $0, 0xf2d06c #areia molhada
	addi $20, $0, 6986
        addi $21, $0, 6978
fightAreia13: beq $20, $21, fimFightAreia13
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia13
fimFightAreia13: ori $9, $0, 0xfce7b0 #areia seca
	addi $20, $0, 8049
        addi $21, $0, 6986
fightAreia14: beq $20, $21, fimFightAreia14
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
        sw $9, 32768($7)
	sw $9, 32768($6)
	addi $6, $6, 4
	addi $7, $7, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j fightAreia14
fimFightAreia14: 
	ori $11, $0, 0x546CF0 #azul do blue
	ori $12, $0, 0x333597 #azul escuro blue
	ori $13, $0, 0xFCFFFD #branco
	ori $14, $0, 0x0C0D0D #preto
	ori $15, $0, 0xB4B4B4 #cinza bico blue/penas nigel
	ori $16, $0, 0x635F5F #cinza bico nigel
	ori $17, $0, 0xBD768E #rosa nigel 
	ori $18, $0, 0xF9BB0B #amarelo crista nigel
	ori $19, $0, 0x9D09A5 #roxo do acai
	
	lui $8, 0x1001 #Nigel com o endereco inicial
	addi $8, $8, 27072 #mover Nigel pro lugar escolhido na tela
	
	lui $7, 0x1001 #acai 
	addi $7, $7, 29596
	
	lui $6, 0x1001 #blue
	addi $6, $6, 27712
	
	add $9, $0, $0

	lui $28, 0xffff #teclado
	addi $25, $0, 'w' #move para cima
     	addi $26, $0, 'a' #move para esquerda
        addi $27, $0, 'd' #move para frente 	

#acao nigel
	addi $21, $0, 4 #andar do Nigel
	addi $10, $0, -4 #subtracao do endereco do Nigel
	#addi $5, $0, 100

acaoNigel:
	lui $20, 0x1001 #posicao inicial colisao do acai
	addi $20, $20, 29288 #posicao da colisao 
	jal desenhoNigel
	jal desenhoBlue
	jal desenhoAcai
        
        #se o blue bater no bico do nigel ele perde
        jal timerFightNigel
        lw $5, 988($8)
	beq $5, $15, fase2
	
	lw $5, 1500($8)
	beq $5, $15, fase2
	
        #se o blue chegar na ponta da tela ele perde
        lui $5, 0x1001
	addi $5, $5, 27632
        beq $5, $6, fase2

        #se o blue chegar no final da tela ele perdeu
        lui $5, 0x1001
        addi $5, $5, 27604
        beq $5, $6, fase2

        #se parte de baixo do blue bater em cima do nigel ele ganha
	lw $5, 0($8)
	beq $5, $11, fimDesenhoFight
	lw $5, 488($8)
	beq $5, $11, fimDesenhoFight 
	lw $5, 492($8)
        beq $5, $11, fimDesenhoFight
        lw $5, 496($8)
        beq $5, $11, fimDesenhoFight
        lw $5, 500($8)
        beq $5, $11, fimDesenhoFight
        lw $5, 504($8)
        beq $5, $11, fimDesenhoFight
        lw $5, 508($8)
        beq $5, $11, fimDesenhoFight
        lw $5, 512($8)
        beq $5, $11, fimDesenhoFight

        jal copiaFundoNigel
	jal copiaFundoAcai
	jal copiaFundoBlue
	
	lw $5, 1560($6)
	beq $5, $19, fase2 #se a boca do blue comer a fruta ele perde 

	beq $7, $20, fimAcai #se o acai chegar na posicao final
	beq $21, $0, voltaNigel #se o nigel andar ate a posicao ele volta
	
	beq $9, -5120, Descida
	
	add $8, $8, $10 #mudanca endereco Nigel

	addi $7, $7, -4 #mudanca de endereco Acai  	
	
	addi $21, $21, -1 #andar do Nigel -1
	lw $20, 0($28) #estado do teclado
	beq $20, $0, continuacaoFight 
	lw $20, 4($28)
	beq $20, $25, bluePular
	lw $20, 4($28)
	beq $20, $26, blueAndarTras    
        lw $20, 4($28)
        beq $20, $27, blueAndarFrente
	j acaoNigel
	
voltaNigel: 
	addi $20, $0, -1 #-1 para multiplicar o $10
	mul $10, $10, $20 #tornar o $10 em 4/-4 para o Nigel voltar na direcao contraria    
 	addi $21, $0, 12 #reset do $21  
 	
 	beq $7, $20, fimAcai #checar se o acao chegar na colisao vai pro fimAcai
	
 	j acaoNigel
 	
fimAcai: lw $23, 32768($7) #0($7)
	sw $23, 0($7)
	lw $23, 33280($7) 
	sw $23, 512($7)
	add $7, $0, $8 #volta o acai pra posicao em que o Nigel esta 
	addi $7, $7, 2524 #poe o acai na boca do Nigel
	beq $21, $0, voltaNigel
	
	j acaoNigel
	
bluePular: addi $9, $0, -5120
	add $6, $6, $9 #diminui o valor do endereco do inicial do Blue
	
	jal desenhoBlue
	
        #lw $24, 33304($6) #536($6)
	#sw $24, 536($6)  
        #lw $24, 33816($6) #1048($6)
        #sw $24, 1048($6) 
	jal copiaFundoBlue

	j continuacaoFight
	
Descida: 
	addi $9, $0, 5180
	add $6, $6, $9

	j continuacaoFight
	
blueAndarFrente:
	addi $6, $6, 8 #move o blue 2 casas pra frente
		
	jal desenhoBlue
	
	jal copiaFundoBlue
	
	j continuacaoFight
	
blueAndarTras:
	addi $6, $6, -8 #move o blue 2 casas pra tras
		
	jal desenhoBlue

        #lw $24, 33304($6) #536($6)
	#sw $24, 536($6)  
        #lw $24, 33816($6) #1048($6)
        #sw $24, 1048($6) 
        
	jal copiaFundoBlue
	
	j continuacaoFight
	
continuacaoFight: j acaoNigel

fimDesenhoFight:
	#jal desenhoBlue
	lui $8, 0x1001     #reinicar posi??o da mem?ria
	lui $9, 0x0000     #preto
	addi $20, $0, 8192 #quantidade de vezes que vai pintar o fundo

testTelaPretaf2: 
	    beq $20, $0, fase3
	    sw $9, 0($8)
	    addi $8, $8, 4
	    addi $20, $20, -1 
	    div $20 $8
	    mfhi $25
	    beq $25 $0 time_tela_pretaf2
	   vtf2: j testTelaPretaf2
	   
time_tela_pretaf2:
		addi $24 $0 10000
	t2:
		beq $24 $0 vtf2
		nop
		addi $24 $24 -1
		j t2
	
#------------------------------------------------------
	
#funcao desenho do Nigel
desenhoNigel: 
	sw $18, 0($8)
	
	sw $13, 488($8)
	sw $13, 492($8)
	sw $13, 496($8)
	sw $13, 500($8)
	sw $18, 504($8)
	sw $18, 508($8) 
	sw $18, 512($8)
	
	sw $16, 992($8)
	sw $16, 996($8)
	sw $17, 1000($8)
	sw $17, 1004($8)
	sw $13, 1008($8)          
	sw $13, 1012($8)
	sw $18, 1016($8)
	sw $18, 1020($8)
	
	sw $16, 1504($8)
	sw $16, 1508($8)
	sw $14, 1512($8)
	sw $17, 1516($8)
	sw $13, 1520($8)          
	sw $13, 1524($8)
	sw $13, 1528($8)
	sw $13, 1532($8)
	
	sw $16, 2016($8)
	sw $16, 2020($8)
	sw $14, 2024($8)
	sw $17, 2028($8)
	sw $13, 2032($8)          
	sw $13, 2036($8)
	sw $13, 2040($8)
	sw $13, 2044($8)
	
	sw $16, 2532($8)
	sw $17, 2536($8)
	sw $17, 2540($8)
	sw $13, 2544($8)          
	sw $13, 2548($8)
	sw $13, 2552($8)
	sw $13, 2556($8)
	
	sw $13, 3048($8)
	sw $13, 3052($8)
	sw $13, 3056($8)
	sw $13, 3060($8)
	sw $13, 3064($8)
	sw $13, 3068($8)

	
	sw $13, 3560($8)
	sw $13, 3564($8)
	sw $13, 3568($8)
	sw $13, 3572($8)
	sw $15, 3576($8)
	sw $15, 3580($8)
	sw $15, 3584($8)
	
	sw $13, 4072($8)
	sw $13, 4076($8)
	sw $15, 4080($8)
	sw $15, 4084($8)
	sw $13, 4088($8)
	sw $13, 4092($8)
	sw $13, 4096($8)
	
	sw $13, 4584($8)
	sw $13, 4588($8)
	sw $13, 4592($8)
	sw $13, 4596($8)
	sw $15, 4600($8)
	sw $15, 4604($8)
	sw $15, 4608($8)
	
	sw $13, 5096($8)
	sw $13, 5100($8)
	sw $13, 5104($8)
	sw $13, 5108($8)
	sw $13, 5112($8)
	sw $13, 5116($8)
	sw $13, 5120($8)
	
	jr $31
	
#desenho do fundo com as copias para a movimentacao do Nigel
copiaFundoNigel: 
	lw $22, 32768($8) #0($8)
	sw $22, 0($8) 
  
	lw $22, 33256($8) #488($8)
	sw $22, 488($8)      
	lw $22, 33260($8) #492($8)
	sw $22, 492($8)        
	lw $22, 33264($8) #496($8)
	sw $22, 496($8)        
	lw $22, 33268($8) #500($8)
	sw $22, 500($8)
	lw $22, 33272($8) #504($8)
	sw $22, 504($8)        
	lw $22, 33276($8) #508($8)
	sw $22, 508($8)        
	lw $22, 33280($8) #512($8)
	sw $22, 512($8)
	       
	lw $22, 33760($8) #992($8)
	sw $22, 992($8)      
	lw $22, 33764($8) #996($8)
	sw $22, 996($8)        
	lw $22, 33768($8) #1000($8)
	sw $22, 1000($8)        
	lw $22, 33772($8) #1004($8)
	sw $22, 1004($8)
	lw $22, 33776($8) #1008($8)
	sw $22, 1008($8)        
	lw $22, 33780($8) #1012($8)
	sw $22, 1012($8)        
	lw $22, 33784($8) #1016($8)
	sw $22, 1016($8)
	lw $22, 33788($8) #1020($8)
	sw $22, 1020($8)
	
	lw $22, 34272($8) #1504($8)
	sw $22, 1504($8)      
	lw $22, 34276($8) #1508($8)
	sw $22, 1508($8)        
	lw $22, 34280($8) #1512($8)
	sw $22, 1512($8)        
	lw $22, 34284($8) #1516($8)
	sw $22, 1516($8)
	lw $22, 34288($8) #1520($8)
	sw $22, 1520($8)        
	lw $22, 34292($8) #1524($8)
	sw $22, 1524($8)        
	lw $22, 34296($8) #1528($8)
	sw $22, 1528($8)
	lw $22, 34300($8) #1532($8)
	sw $22, 1532($8)
	
	lw $22, 34784($8) #2016($8)
	sw $22, 2016($8)      
	lw $22, 34788($8) #2020($8)
	sw $22, 2020($8)        
	lw $22, 34792($8) #2024($8)
	sw $22, 2024($8)        
	lw $22, 34796($8) #2028($8)
	sw $22, 2028($8)
	lw $22, 34800($8) #2032($8)
	sw $22, 2032($8)        
	lw $22, 34804($8) #2036($8)
	sw $22, 2036($8)        
	lw $22, 34808($8) #2040($8)
	sw $22, 2040($8)
	lw $22, 34812($8) #2044($8)
	sw $22, 2044($8)
	
	lw $22, 35300($8) #2532($8)
	sw $22, 2532($8)      
	lw $22, 35304($8) #2536($8)
	sw $22, 2536($8)        
	lw $22, 35308($8) #2540($8)
	sw $22, 2540($8)        
	lw $22, 35312($8) #2544($8)
	sw $22, 2544($8)
	lw $22, 35316($8) #2548($8)
	sw $22, 2548($8)        
	lw $22, 35320($8) #2552($8)
	sw $22, 2552($8)        
	lw $22, 35324($8) #2556($8)
	sw $22, 2556($8)
	
	lw $22, 35816($8) #3048($8)
	sw $22, 3048($8)      
	lw $22, 35820($8) #3052($8)
	sw $22, 3052($8)        
	lw $22, 35824($8) #3056($8)
	sw $22, 3056($8)        
	lw $22, 35828($8) #3060($8)
	sw $22, 3060($8)
	lw $22, 35832($8) #3064($8)
	sw $22, 3064($8)        
	lw $22, 35836($8) #3068($8)
	sw $22, 3068($8)        
	
	lw $22, 36328($8) #3560($8)
	sw $22, 3560($8)      
	lw $22, 36332($8) #3564($8)
	sw $22, 3564($8)        
	lw $22, 36336($8) #3568($8)
	sw $22, 3568($8)        
	lw $22, 36340($8) #3572($8)
	sw $22, 3572($8)
	lw $22, 36344($8) #3576($8)
	sw $22, 3576($8)        
	lw $22, 36348($8) #3580($8)
	sw $22, 3580($8)
	lw $22, 36352($8) #3584($8)
	sw $22, 3584($8)   
	
	lw $22, 36840($8) #4072($8)
	sw $22, 4072($8)      
	lw $22, 36844($8) #4076($8)
	sw $22, 4076($8)        
	lw $22, 36848($8) #4080($8)
	sw $22, 4080($8)        
	lw $22, 36852($8) #4084($8)
	sw $22, 4084($8)
	lw $22, 36856($8) #4088($8)
	sw $22, 4088($8)        
	lw $22, 36860($8) #4092($8)
	sw $22, 4092($8)
	lw $22, 36864($8) #4096($8)
	sw $22, 4096($8)
	
	lw $22, 37352($8) #4584($8)
	sw $22, 4584($8)      
	lw $22, 37356($8) #4588($8)
	sw $22, 4588($8)        
	lw $22, 37360($8) #4592($8)
	sw $22, 4592($8)        
	lw $22, 37364($8) #4596($8)
	sw $22, 4596($8)
	lw $22, 37368($8) #4600($8)
	sw $22, 4600($8)        
	lw $22, 37372($8) #4604($8)
	sw $22, 4604($8)
	lw $22, 37376($8) #4608($8)
	sw $22, 4608($8) 
	
	lw $22, 37864($8) #5096($8)
	sw $22, 5096($8)      
	lw $22, 37868($8) #5100($8)
	sw $22, 5100($8)        
	lw $22, 37872($8) #5104($8)
	sw $22, 5104($8)        
	lw $22, 37876($8) #5108($8)
	sw $22, 5108($8)
	lw $22, 37880($8) #5112($8)
	sw $22, 5112($8)        
	lw $22, 37884($8) #5116($8)
	sw $22, 5116($8)
	lw $22, 37888($8) #5120($8)
	sw $22, 5120($8) 
	
	jr $31	  

#funcao desenho acai
desenhoAcai:
	sw $19, 0($7)
	sw $19, 4($7)
	#sw $19, 8($7)
	sw $19, 512($7)
	sw $19, 516($7)
	#sw $19, 520($7)
	jr $31
	
#desenho do fundo com as copias para a movimentacao do acai
copiaFundoAcai:
	lw $23, 32772($7) #4($7)
	sw $23, 4($7) 
	lw $23, 32776($7) #8($7)
	sw $23, 8($7) 
	
	lw $23, 33284($7) #516($7)
	sw $23, 516($7) 		     	 			     	 	
	lw $23, 33288($7) #520($7)
	sw $23, 520($7) 		     	 			     	 	
	
	jr $31			   	 			     	 			     	 			     	 			     	 	
#funcao desenho do Blue
desenhoBlue: 
	sw $11, 0($6)
	sw $11, 4($6)
	sw $11, 8($6)
	sw $11, 12($6)
	sw $11, 16($6)
	       
	sw $11, 516($6)
	sw $11, 520($6)
	sw $13, 524($6) 
	sw $13, 528($6)
	sw $15, 532($6) 
	sw $15, 536($6) 
	      
	sw $11, 1028($6)
	sw $11, 1032($6) 
	sw $13, 1036($6) 
	sw $14, 1040($6)
	sw $15, 1044($6) 
	sw $15, 1048($6)  
	     
	sw $11, 1540($6)
	sw $11, 1544($6)
	sw $13, 1548($6) 
	sw $13, 1552($6)
	sw $15, 1556($6) 
	       
	sw $11, 2052($6)
	sw $11, 2056($6)
	sw $11, 2060($6)
	sw $11, 2064($6)
	       
	sw $12, 2556($6)
	sw $12, 2560($6)
	sw $12, 2564($6) 
	sw $11, 2568($6)
	sw $11, 2572($6)
	sw $11, 2576($6)
	
	sw $11, 3064($6)
	sw $11, 3068($6)
	sw $11, 3072($6) 
	sw $11, 3076($6)
	sw $12, 3080($6)
	sw $11, 3084($6)
	sw $11, 3088($6)
	
	sw $12, 3580($6)
	sw $12, 3584($6)
	sw $12, 3588($6) 
	sw $11, 3592($6)
	sw $11, 3596($6)
	sw $11, 3600($6)
	
	sw $11, 4092($6)
	sw $11, 4096($6)
	sw $11, 4100($6) 
	sw $11, 4104($6)
	sw $11, 4108($6)
	sw $11, 4112($6)
	       
	jr $31
#desenho do fundo com as copias para a movimentacao do blue
copiaFundoBlue: 
	lw $24, 32768($6) #0($6)
	sw $24, 0($6)
	lw $24, 32772($6) #4($6)
	sw $24, 4($6) 
	lw $24, 32776($6) #8($6)
	sw $24, 8($6)
	lw $24, 32780($6) #12($6)
	sw $24, 12($6) 
	lw $24, 32784($6) #16($6)
	sw $24, 16($6)   
  
	lw $24, 33284($6) #516($8)
	sw $24, 516($6)      
	lw $24, 33288($6) #520($6)
	sw $24, 520($6)        
	lw $24, 33292($6) #524($6)
	sw $24, 524($6)        
	lw $24, 33296($6) #528($6)
	sw $24, 528($6)
	lw $24, 33300($6) #532($6)
	sw $24, 532($6)        
	lw $24, 33304($6) #536($6)
	sw $24, 536($6)        
	       
	lw $24, 33796($6) #1028($6)
	sw $24, 1028($6)      
	lw $24, 33800($6) #1032($6)
	sw $24, 1032($6)        
	lw $24, 33804($6) #1036($6)
	sw $24, 1036($6)        
	lw $24, 33808($6) #1040($6)
	sw $24, 1040($6)
	lw $24, 33812($6) #1044($6)
	sw $24, 1044($6)        
	lw $24, 33816($6) #1048($6)
	sw $24, 1048($6)        
	
	lw $24, 34308($6) #1540($6)
	sw $24, 1540($6)      
	lw $24, 34312($6) #1544($6)
	sw $24, 1544($6)        
	lw $24, 34316($6) #1548($6)
	sw $24, 1548($6)        
	lw $24, 34320($6) #1552($6)
	sw $24, 1552($6)
	lw $24, 34324($6) #1556($6)
	sw $24, 1556($6)        

	lw $24, 34820($6) #2052($6)
	sw $24, 2052($6)      
	lw $24, 34824($6) #2056($6)
	sw $24, 2056($6)        
	lw $24, 34828($6) #2060($6)
	sw $24, 2060($6)        
	lw $24, 34832($6) #2064($6)
	sw $24, 2064($6)
	
	lw $24, 35324($6) #2556($6)
	sw $24, 2556($6)
	lw $24, 35328($6) #2560($6)
	sw $24, 2560($6)      
	lw $24, 35332($6) #2564($6)
	sw $24, 2564($6)        
	lw $24, 35336($6) #2568($6)
	sw $24, 2568($6)        
	lw $24, 35340($6) #2572($6)
	sw $24, 2572($6)
	lw $24, 35344($6) #2576($6)
	sw $24, 2576($6)                
	
	lw $24, 35832($6) #3064($6)
	sw $24, 3064($6)        
	lw $24, 35836($6) #3068($6)
	sw $24, 3068($6) 
	lw $24, 35840($6) #3072($6)
	sw $24, 3072($6)      
	lw $24, 35844($6) #3076($6)
	sw $24, 3076($6)        
	lw $24, 35848($6) #3080($6)
	sw $24, 3080($6)        
	lw $24, 35852($6) #3084($6)
	sw $24, 3084($6)
	lw $24, 35856($6) #3088($6)
	sw $24, 3088($6)       
	
	lw $24, 36348($6) #3580($6)
	sw $24, 3580($6)
	lw $24, 36352($6) #3584($6)
	sw $24, 3584($6)   
	lw $24, 36356($6) #3588($6)
	sw $24, 3588($6)      
	lw $24, 36360($6) #3592($6)
	sw $24, 3592($6)        
	lw $24, 36364($6) #3596($6)
	sw $24, 3596($6)        
	lw $24, 36368($6) #3600($6)
	sw $24, 3600($6)  
	
	lw $24, 36860($6) #4092($6)
	sw $24, 4092($6)
	lw $24, 36864($6) #4096($6)
	sw $24, 4096($6)
	lw $24, 36868($6) #4100($6)
	sw $24, 4100($6)      
	lw $24, 36872($6) #4104($6)
	sw $24, 4104($6)        
	lw $24, 36876($6) #4108($6)
	sw $24, 4108($6)        
	lw $24, 36880($6) #4112($6)
	sw $24, 4112($6)
	
	jr $31

#funcao timer Nigel
timerFightNigel: sw $25, 0($29)
	addi $29, $29, -4
	addi $25, $0, 7000
	
forTimerFightNigel: beq $25, $0, fimTimerFightNigel
	nop
	nop
	addi $25, $25, -1
	j forTimerFightNigel

fimTimerFightNigel: addi $29, $29, 4
	lw $25, 0($29)
	jr $31 
	
#--------------------------------------	
#Parte 4 - Etapa 3 - Flappy Bird
fase3:lui $8, 0x1001
      lui $6, 0x1001
      ori $9, $0, 0x62ABD3 #azul 1
      addi $20, $0, 2688
      
flappyCeu: beq $20, $0, fimFlappyCeu
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu
       
fimFlappyCeu: ori $9, $0, 0x71AED0 #azul 2
              addi $20, $0, 1024
              
flappyCeu2: beq $20, $0, fimFlappyCeu2
            sw $9, 0($8)
            sw $9, 32768($8) #copia do cenario
	    sw $9, 32768($6)
	    addi $6, $6, 4
            addi $8, $8, 4
            addi $20, $20, -1
            j flappyCeu2
       
fimFlappyCeu2: ori $9, $0, 0x79B1D0 #azul 3
              addi $20, $0, 1038

flappyCeu3: beq $20, $0, fimFlappyCeu3
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu3
       
fimFlappyCeu3:  ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu4: beq $20, $0, fimFlappyCeu4
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
	   sw $9, 32768($6)
	  addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu4
           
fimFlappyCeu4: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu5: beq $20, $0, fimFlappyCeu5
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu5
           
fimFlappyCeu5: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu6: beq $20, $0, fimFlappyCeu6
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu6
           
fimFlappyCeu6: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 41
		
flappyCeu7: beq $20, $0, fimFlappyCeu7
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
	   sw $9, 32768($6)
	   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu7
           
fimFlappyCeu7: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu8: beq $20, $0, fimFlappyCeu8
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu8
           
fimFlappyCeu8:  ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu9: beq $20, $0, fimFlappyCeu9
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu9
           
fimFlappyCeu9: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu10: beq $20, $0, fimFlappyCeu10
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu10
           
fimFlappyCeu10: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 42
		
flappyCeu11: beq $20, $0, fimFlappyCeu11
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu11
           
fimFlappyCeu11: ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu12: beq $20, $0, fimFlappyCeu12
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu12
           
fimFlappyCeu12:  ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu13: beq $20, $0, fimFlappyCeu13
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu13
           
fimFlappyCeu13: ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 22
		
flappyCeu14: beq $20, $0, fimFlappyCeu14
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu14
           
fimFlappyCeu14: ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 41
		
flappyCeu15: beq $20, $0, fimFlappyCeu15
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu15
           
fimFlappyCeu15: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu16: beq $20, $0, fimFlappyCeu16
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu16
           
fimFlappyCeu16: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu17: beq $20, $0, fimFlappyCeu17
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu17
           
fimFlappyCeu17:  ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu18: beq $20, $0, fimFlappyCeu18
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu18
           
fimFlappyCeu18: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 20
		
flappyCeu19: beq $20, $0, fimFlappyCeu19
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu19
           
fimFlappyCeu19: ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
             	
             	ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
                
                ori $9, $0, 0x77BE68 #verde 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4                      

		ori $9, $0, 0xAF5F24 #marrom
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x92D027 #verde 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x398426 #verde 1
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu20: beq $20, $0, fimFlappyCeu20
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu20
           
fimFlappyCeu20: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 14
		
flappyCeu21: beq $20, $0, fimFlappyCeu21
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu21
           
fimFlappyCeu21: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 15
		
flappyCeu22: beq $20, $0, fimFlappyCeu22
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu22
           
fimFlappyCeu22: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu23: beq $20, $0, fimFlappyCeu23
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu23
           
fimFlappyCeu23: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu24: beq $20, $0, fimFlappyCeu24
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu24
           
fimFlappyCeu24:  ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu25: beq $20, $0, fimFlappyCeu25
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu25
           
fimFlappyCeu25: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 13
		
flappyCeu26: beq $20, $0, fimFlappyCeu26
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu26
           
fimFlappyCeu26: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 13
		
flappyCeu27: beq $20, $0, fimFlappyCeu27
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu27
           
fimFlappyCeu27: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu28: beq $20, $0, fimFlappyCeu28
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu28
           
fimFlappyCeu28: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu29: beq $20, $0, fimFlappyCeu29
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu29
           
fimFlappyCeu29: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu30: beq $20, $0, fimFlappyCeu30
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu30
           
fimFlappyCeu30: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu31: beq $20, $0, fimFlappyCeu31
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu31
           
fimFlappyCeu31: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu32: beq $20, $0, fimFlappyCeu32
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu32
           
fimFlappyCeu32: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu33: beq $20, $0, fimFlappyCeu33
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu33
           
fimFlappyCeu33: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu34: beq $20, $0, fimFlappyCeu34
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu34
           
fimFlappyCeu34: ori $9, $0, 0xFBF1CE #branco
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        sw $9, 0($8)
	        sw $9, 32768($8) #copia do cenario
			sw $9, 32768($6)
			addi $6, $6, 4
	        addi $8, $8, 4
	        
	        ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 12
		
flappyCeu35: beq $20, $0, fimFlappyCeu35
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu35
           
fimFlappyCeu35: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 13
		
flappyCeu36: beq $20, $0, fimFlappyCeu36
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu36
           
fimFlappyCeu36: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu37: beq $20, $0, fimFlappyCeu37
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu37
           
fimFlappyCeu37: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu38: beq $20, $0, fimFlappyCeu38
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu38
           
fimFlappyCeu38: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 9
		 
flappyNuvem: beq $20, $0, fimFlappyNuvem
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem
           
fimFlappyNuvem:	ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu39: beq $20, $0, fimFlappyCeu39
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu39
           
fimFlappyCeu39:	ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 9
		 
flappyNuvem2: beq $20, $0, fimFlappyNuvem2
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem2
           
fimFlappyNuvem2: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu40: beq $20, $0, fimFlappyCeu40
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu40
           
fimFlappyCeu40: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu41: beq $20, $0, fimFlappyCeu41
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu41
           
fimFlappyCeu41: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 8
		 
flappyNuvem3: beq $20, $0, fimFlappyNuvem3
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem3
           
fimFlappyNuvem3: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu42: beq $20, $0, fimFlappyCeu42
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu42
           
fimFlappyCeu42:  ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu43: beq $20, $0, fimFlappyCeu43
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu43
           
fimFlappyCeu43: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 5
		 
flappyNuvem4: beq $20, $0, fimFlappyNuvem4
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem4
           
fimFlappyNuvem4:  ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu44: beq $20, $0, fimFlappyCeu44
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu44
           
fimFlappyCeu44:  ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 11
		
flappyCeu45: beq $20, $0, fimFlappyCeu45
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu45
           
fimFlappyCeu45: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu46: beq $20, $0, fimFlappyCeu46
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu46
           
fimFlappyCeu46: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 5
		
flappyCeu47: beq $20, $0, fimFlappyCeu47
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu47
           
fimFlappyCeu47: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 12
		 
flappyNuvem5: beq $20, $0, fimFlappyNuvem5
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem5
           
fimFlappyNuvem5: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu48: beq $20, $0, fimFlappyCeu48
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu48
           
fimFlappyCeu48: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 12
		 
flappyNuvem6: beq $20, $0, fimFlappyNuvem6
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem6
           
fimFlappyNuvem6: ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 13
		 
flappyNuvem7: beq $20, $0, fimFlappyNuvem7
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem7
           
fimFlappyNuvem7: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu49: beq $20, $0, fimFlappyCeu49
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu49
           
fimFlappyCeu49: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu50: beq $20, $0, fimFlappyCeu50
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu50
           
fimFlappyCeu50: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 8
		 
flappyNuvem8: beq $20, $0, fimFlappyNuvem8
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem8
           
fimFlappyNuvem8: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu51: beq $20, $0, fimFlappyCeu51
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu51
           
fimFlappyCeu51: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 10
		
flappyCeu52: beq $20, $0, fimFlappyCeu52
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu52
           
fimFlappyCeu52: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 8
		
flappyCeu53: beq $20, $0, fimFlappyCeu53
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu53
           
fimFlappyCeu53: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
                addi $8, $8, 4
                sw $9, 0($8)
                sw $9, 32768($8) #copia do cenario
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                sw $9, 0($8)
                sw $9, 32768($8) #copia do cenario
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 36
		 
flappyNuvem9: beq $20, $0, fimFlappyNuvem9
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem9
           
fimFlappyNuvem9: ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 15
		 
flappyNuvem10: beq $20, $0, fimFlappyNuvem10
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem10
           
fimFlappyNuvem10: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu54: beq $20, $0, fimFlappyCeu54
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu54
           
fimFlappyCeu54: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu55: beq $20, $0, fimFlappyCeu55
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu55
           
fimFlappyCeu55: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 10
		 
flappyNuvem11: beq $20, $0, fimFlappyNuvem11
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem11
           
fimFlappyNuvem11: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu56: beq $20, $0, fimFlappyCeu56
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu56
           
fimFlappyCeu56: ori $9, $0, 0xFBF1CE #branco
                sw $9, 0($8)
                sw $9, 32768($8) #copia do cenario
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                sw $9, 0($8)
                sw $9, 32768($8) #copia do cenario
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 9
		
flappyCeu57: beq $20, $0, fimFlappyCeu57
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu57
           
fimFlappyCeu57: ori $9, $0, 0xFBF1CE #branco
                sw $9, 0($8)
                sw $9, 32768($8) #copia do cenario
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 7
		
flappyCeu58: beq $20, $0, fimFlappyCeu58
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu58
           
fimFlappyCeu58: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
                addi $20, $0, 43
                
flappyNuvem12: beq $20, $0, fimFlappyNuvem12
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem12
           
fimFlappyNuvem12:  ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4  
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
	        
	        ori $9, $0, 0xFBF1CE #branco
                addi $20, $0, 16
                
flappyNuvem13: beq $20, $0, fimFlappyNuvem13
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem13
           
fimFlappyNuvem13: ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 5
		
flappyCeu59: beq $20, $0, fimFlappyCeu59
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu59
           
fimFlappyCeu59: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4  
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 6
		
flappyCeu60: beq $20, $0, fimFlappyCeu60
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu60
           
fimFlappyCeu60: ori $9, $0, 0xFBF1CE #branco
                addi $20, $0, 13
                
flappyNuvem14: beq $20, $0, fimFlappyNuvem14
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem14
           
fimFlappyNuvem14: ori $9, $0, 0x79B1D0 #azul 3
		  sw $9, 0($8)
		  sw $9, 32768($8) #copia do cenario
		  sw $9, 32768($6)
		  addi $6, $6, 4
                  addi $8, $8, 4
                  sw $9, 0($8)
                  sw $9, 32768($8) #copia do cenario
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  sw $9, 0($8)
                  sw $9, 32768($8) #copia do cenario
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  sw $9, 0($8)
                  sw $9, 32768($8) #copia do cenario
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  
                  ori $9, $0, 0xFBF1CE #branco
                  sw $9, 0($8)
                  sw $9, 32768($8) #copia do cenario
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  sw $9, 0($8)
                  sw $9, 32768($8) #copia do cenario
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  sw $9, 0($8)
                  sw $9, 32768($8) #copia do cenario
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4
                  
                  ori $9, $0, 0xD28F42 #marrom 3
		  sw $9, 0($8)
		  sw $9, 32768($8) #copia do cenario
		  sw $9, 32768($6)
		  addi $6, $6, 4
		  addi $8, $8, 4 
		  
		  ori $9, $0, 0xFBF1CE #branco
                  sw $9, 0($8)
                  sw $9, 32768($8) #copia do cenario
				  sw $9, 32768($6)
				  addi $6, $6, 4
                  addi $8, $8, 4 
                  
                  ori $9, $0, 0x79B1D0 #azul 3
		  addi $20, $0, 7
		
flappyCeu61: beq $20, $0, fimFlappyCeu61
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu61
           
fimFlappyCeu61: ori $9, $0, 0xFBF1CE #branco
                sw $9, 0($8)
                sw $9, 32768($8) #copia do cenario
				sw $9, 32768($6)
				addi $6, $6, 4
                addi $8, $8, 4
                
                ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		addi $20, $0, 6
		
flappyCeu62: beq $20, $0, fimFlappyCeu62
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyCeu62
           
fimFlappyCeu62: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4 
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 15
		
flappyNuvem15: beq $20, $0, fimFlappyNuvem15
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem15
           
fimFlappyNuvem15: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 26
		
flappyNuvem16: beq $20, $0, fimFlappyNuvem16
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem16

fimFlappyNuvem16: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 15
		
flappyNuvem17: beq $20, $0, fimFlappyNuvem17
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem17

fimFlappyNuvem17: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 16

flappyNuvem18: beq $20, $0, fimFlappyNuvem18
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem18

fimFlappyNuvem18: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 6	
		
flappyMontlado51:beq $20, $0, fimFlappyMontlado51
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado51
	
fimFlappyMontlado51: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 7
  		     
flappyMontlado52: beq $20, $0, fimflappyMontlado52
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado52

fimflappyMontlado52: ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 16

flappyNuvem19: beq $20, $0, fimFlappyNuvem19
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem19

fimFlappyNuvem19:ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 24

flappyNuvem20: beq $20, $0, fimFlappyNuvem20
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem20

fimFlappyNuvem20: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 13

flappyNuvem21: beq $20, $0, fimFlappyNuvem21
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem21

fimFlappyNuvem21: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 16

flappyNuvem22: beq $20, $0, fimFlappyNuvem22
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem22

fimFlappyNuvem22: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado511:beq $20, $0, fimFlappyMontlado511
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado511
	
fimFlappyMontlado511: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 8
  		     
flappyMontlado521: beq $20, $0, fimflappyMontlado521
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado521

fimflappyMontlado521: ori $9, $0, 0x79B1D0 #azul 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 15

flappyNuvem23: beq $20, $0, fimFlappyNuvem23
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem23

fimFlappyNuvem23: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 22

flappyNuvem24: beq $20, $0, fimFlappyNuvem24
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem24

fimFlappyNuvem24: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 11

flappyNuvem25: beq $20, $0, fimFlappyNuvem25
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem25

fimFlappyNuvem25: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 18

flappyNuvem26: beq $20, $0, fimFlappyNuvem26
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem26

fimFlappyNuvem26: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 8
		
flappyMontlado512:beq $20, $0, fimFlappyMontlado512
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado512
	
fimFlappyMontlado512: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 9
  		     
flappyMontlado522: beq $20, $0, fimflappyMontlado522
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado522

fimflappyMontlado522: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 14

flappyNuvem27: beq $20, $0, fimFlappyNuvem27
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem27

fimFlappyNuvem27: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 13

flappyNuvem28: beq $20, $0, fimFlappyNuvem28
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem28

fimFlappyNuvem28: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 9

flappyNuvem29: beq $20, $0, fimFlappyNuvem29
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem29

fimFlappyNuvem29: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 17

flappyNuvem30: beq $20, $0, fimFlappyNuvem30
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem30

fimFlappyNuvem30: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 9
		
		
flappyMontlado513:beq $20, $0, fimFlappyMontlado513
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado513
	
fimFlappyMontlado513: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 10
  		     
flappyMontlado523: beq $20, $0, fimflappyMontlado523
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado523

fimflappyMontlado523: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 13

flappyNuvem31: beq $20, $0, fimFlappyNuvem31
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem31

fimFlappyNuvem31: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 11

flappyNuvem32: beq $20, $0, fimFlappyNuvem32
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem32

fimFlappyNuvem32: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 7

flappyNuvem33: beq $20, $0, fimFlappyNuvem33
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem33

fimFlappyNuvem33: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 16

flappyNuvem34: beq $20, $0, fimFlappyNuvem34
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem34

fimFlappyNuvem34: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
				
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 9
		
flappyMontlado514:beq $20, $0, fimFlappyMontlado514
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado514
	
fimFlappyMontlado514: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 11
  		     
flappyMontlado524: beq $20, $0, fimflappyMontlado524
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado524

fimflappyMontlado524: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 12

flappyNuvem35: beq $20, $0, fimFlappyNuvem35
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem35

fimFlappyNuvem35: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
				
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 9

flappyNuvem36: beq $20, $0, fimFlappyNuvem36
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem36

fimFlappyNuvem36: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
				
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 7

flappyNuvem37: beq $20, $0, fimFlappyNuvem37
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem37

fimFlappyNuvem37: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 5

flappyNuvem38: beq $20, $0, fimFlappyNuvem38
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem38

fimFlappyNuvem38: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 8
		
flappyMontlado515:beq $20, $0, fimFlappyMontlado515
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado515
	
fimFlappyMontlado515: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 12
  		     
flappyMontlado525: beq $20, $0, fimflappyMontlado525
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado525

fimflappyMontlado525: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 7

flappyNuvem39: beq $20, $0, fimFlappyNuvem39
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem39

fimFlappyNuvem39: ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 5
		
flappyMontlado71:beq $20, $0, fimFlappyMontlado71
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado71
	
fimFlappyMontlado71: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 9
  		     
flappyMontlado72:beq $20, $0, fimflappyMontlado72
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado72

fimflappyMontlado72: ori $9, $0, 0xFBF1CE #branco
		addi $20, $0, 7

flappyNuvem40: beq $20, $0, fimFlappyNuvem40
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyNuvem40

fimFlappyNuvem40: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 9
		
flappyMontlado31:beq $20, $0, fimFlappyMontlado31
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado31
	
fimFlappyMontlado31: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado41:beq $20, $0, fimFlappyMontlado41
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado41
	
fimFlappyMontlado41: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado516:beq $20, $0, fimFlappyMontlado516
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado516
	
fimFlappyMontlado516: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 12
  		     
flappyMontlado526: beq $20, $0, fimflappyMontlado526
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado526

fimflappyMontlado526: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 6
		
flappyMontlado711:beq $20, $0, fimFlappyMontlado711
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado711
	
fimFlappyMontlado711: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 10
  		     
flappyMontlado721:beq $20, $0, fimflappyMontlado721
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado721

fimflappyMontlado721: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		addi $20, $0, 7
		
flappyMontlado21:beq $20, $0, fimFlappyMontlado21
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado21
	
fimFlappyMontlado21:  ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4

		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 10
		
flappyMontlado311:beq $20, $0, fimFlappyMontlado311
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado311
	
fimFlappyMontlado311: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 8
		
flappyMontlado411:beq $20, $0, fimFlappyMontlado411
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado411
	
fimFlappyMontlado411: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 6
		
flappyMontlado517:beq $20, $0, fimFlappyMontlado517
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado517
	
fimFlappyMontlado517: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 12
  		     
flappyMontlado527: beq $20, $0, fimflappyMontlado527
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado527

fimflappyMontlado527: ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado712:beq $20, $0, fimFlappyMontlado712
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado712
	
fimFlappyMontlado712: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 11
  		     
flappyMontlado722:beq $20, $0, fimflappyMontlado722
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado722

fimflappyMontlado722: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado11:beq $20, $0, fimFlappyMontlado11
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado11
	
fimFlappyMontlado11: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 5
  		     
flappyMontlado12: beq $20, $0, fimflappyMontlado12
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado12

fimflappyMontlado12: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		addi $20, $0, 7
		
flappyMontlado211:beq $20, $0, fimFlappyMontlado211
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado211
	
fimFlappyMontlado211: ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 11
		
flappyMontlado312:beq $20, $0, fimFlappyMontlado312
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado312
	
fimFlappyMontlado312: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 8
		
flappyMontlado412:beq $20, $0, fimFlappyMontlado412
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado412
	
fimFlappyMontlado412: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		addi $20, $0, 6
		
flappyMontlado62:beq $20, $0, fimFlappyMontlado62
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado62
	
fimFlappyMontlado62: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
  		addi $20, $0, 12
  		     
flappyMontlado528: beq $20, $0, fimflappyMontlado528
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado528

fimflappyMontlado528: ori $9, $0, 0xDF9E44 #marrom 2
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		 
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4		
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado713:beq $20, $0, fimFlappyMontlado713
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado713
	
fimFlappyMontlado713: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 13
  		     
flappyMontlado723:beq $20, $0, fimflappyMontlado723
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado723

fimflappyMontlado723: ori $9, $0, 0xFBF1CE #branco
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 9
		
flappyMontlado111:beq $20, $0, fimFlappyMontlado111
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado111
	
fimFlappyMontlado111: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 5
  		     
flappyMontlado121: beq $20, $0, fimflappyMontlado121
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado121

fimflappyMontlado121: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		addi $20, $0, 6
		
flappyMontlado212:beq $20, $0, fimFlappyMontlado212
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado212
	
fimFlappyMontlado212: ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 13
		
flappyMontlado313:beq $20, $0, fimFlappyMontlado313
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado313
	
fimFlappyMontlado313: ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		addi $20, $0, 7
		
flappyMontlado621:beq $20, $0, fimFlappyMontlado621
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado621
	
fimFlappyMontlado621: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
  		addi $20, $0, 11
  		     
flappyMontlado529: beq $20, $0, fimflappyMontlado529
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado529

fimflappyMontlado529: ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0xD28F42 #marrom 3
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0x67B72C #verde 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		
		ori $9, $0, 0x307C71 #verde 5
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4
		sw $9, 0($8)
		sw $9, 32768($8) #copia do cenario
		sw $9, 32768($6)
		addi $6, $6, 4
		addi $8, $8, 4	
		
		ori $9, $0, 0x67B72C #verde 4
		addi $20, $0, 7
		
flappyMontlado714:beq $20, $0, fimFlappyMontlado714
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado714
	
fimFlappyMontlado714: ori $9, $0, 0x307C71 #verde 5
  		     addi $20, $0, 14
  		     
flappyMontlado724:beq $20, $0, fimflappyMontlado724
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyMontlado724

fimflappyMontlado724: ori $9, $0, 0xFEE1A2 #areia 1
		      addi $20, $0, 128
  		     
flappyAreia1:beq $20, $0, fimflappyAreia1
           sw $9, 0($8)
           sw $9, 32768($8) #copia do cenario
		   sw $9, 32768($6)
		   addi $6, $6, 4
           addi $8, $8, 4
           addi $20, $20, -1
           j flappyAreia1

fimflappyAreia1: ori $9, $0, 0xF1BD75 #areia 2
		 addi $20, $0, 256
  		     
flappyAreia2:beq $20, $0, fimflappyAreia2
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
	    sw $9, 32768($6)
	    addi $6, $6, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j flappyAreia2

fimflappyAreia2: ori $9, $0, 0xDF9E44 #areia 3
		 addi $20, $0, 256
  		     
flappyAreia3:beq $20, $0, fimflappyAreia3
        sw $9, 0($8)
        sw $9, 32768($8) #copia do cenario
	    sw $9, 32768($6)
	    addi $6, $6, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j flappyAreia3

fimflappyAreia3: ori $9, $0, 0xD28F42 #areia 4
		 addi $20, $0, 256
  		     
flappyAreia4:beq $20, $0, fimflappyAreia4
        sw $9, 0($8) #copia do cenario
        sw $9, 32768($8) 
	    sw $9, 32768($6)
	    addi $6, $6, 4
        addi $8, $8, 4
        addi $20, $20, -1
        j flappyAreia4

fimflappyAreia4: 
	    lui $8, 0x1001 #reg do passaro com o endereco inicial
	    addi $8, $8, 12380 # mover o passaro pro meio da tela
	 	 
	 	lui $6, 0x1001 #endereco do obstaculo
	    addi $6, $6, 224  		
		 
		addi $13, $0, 512 #valor de diferenca
		 
		lui $21, 0xffff #teclado
		addi $10, $0, 'w' #tecla pra levantar o passaro
		 
		ori $15, $0, 0xFEE1A2 #cor da areia para colisao
		ori $9, $0, 0xeb9617 #cor do obstaculo 
		 
		lui $24, 0x1001 #endereco de colisao do obstaculo
		 
		addi $26, $0, 6 #quantidade de obstaculos gerados
		 
		jal flappyRandomico
flappyCaindo:  beq $26, $0, flappyWin #se gerar 10 obstaculos o blue ganha

		    #desenho do passaro
	       jal desenhoFlappy
	       
	       jal flappyObstaculoTopo
	       
	       jal timerFlappy
	       jal timerFlappyObstaculo
	       
	       #ccpia e print do cenario
	       jal copiaFundoFlappy
	       
	       #addi $8, $8, 4 #move o blue pra frente  
	       beq $6, $24, flappyDistanciaObstaculos #se chegar em certa posicao gera outro obstaculo
	       
	       beq $12, $15, fimDesenhoFlappy #se a copia do cenario naquela posicao for da cor da areia ele finaliza 
	       
	       lw $27, 20($8)
	       beq $27, $9, fimDesenhoFlappy #se o endereco do blue a frente for da cor do obstaculo ele perde
	       
	       lw $27, 3072($8)
	       beq $27, $9, fimDesenhoFlappy #se o endereco do blue em baixo for da cor do obstaculo ele perde
	       
	       addi $27, $8, -3072
	       beq $27, $6, fimDesenhoFlappy #se o blue sair da tela e tiver passando um obstaculo ele morre
	       
	       
	       #------------------------
	     
	       add $8, $8, $13 #diferenca entre os enderecos do passaro
	       add $6, $6, -4 #diferenca entre os enderecos do obstaculo
	       
	       
	       lw $22, 0($21) #estado do teclado
	       beq $22, $0, continuacaoFlappy
	       lw $22, 4($21)
	       beq $22, $10, flappyVoar
	       
	       j continuacaoFlappy

flappyVoar: addi $13, $0, -1536 # voltar o passaro tres enderecos

	     add $8, $8, $13 #diminui do endereco
	     
	     #desenho do passaro
	     jal desenhoFlappy

	     #copia e print do cenario
	     jal copiaFundoFlappy
	     
	     #------------------
	     addi $13, $0, 512 #volta a somar o endereco
	     j continuacaoFlappy

continuacaoFlappy: j flappyCaindo

flappyWin: addi $26, $0, 30 #movimntacao do blue pro meio da tela
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
 			 
 			 addi $6, $6, 512 #diferenca entre os enderecos
 			 addi $20, $20, 1 #quantidade de vezes que vai desenhar
 			  
 			 j apagarFlappyObstaculos
 			
copiaApagarFlappyObstaculos:  addi $6, $6, 6144 #diferenca entre os obstaculos
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
	      jal desenhoCoracaoFlappy
	      jal som
	      addi $2, $0, 10
	      syscall
	     	      
fimDesenhoFlappy: jal desenhoFlappy #desenhar boneco novamente
	    
	          j fimDesenhoFight
                  
#funcao gerar valores randomicos
flappyRandomico: addi $5, $0, 35 #limite do intervalo
	       	 addi $2, $0, 42 #gerar randomico
	         syscall
	         
	         add $23, $0, $4
	         addi $23, $23, 10 #pega o randomico e soma com 10 - altura topo do obstaculo
	         
	         addi $25, $0, 45 #maximo que pode ter os obstaculos
	         sub $25, $25, $23 #maximo menor o randomico - altura do obstaculo de baixo
	         
	         addi $26, $26, -1 #contador de obstaculos
	         j flappyObstaculoTopo

#funcao distancia dos obstaculos
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
 			 
 			 addi $6, $6, 512 #diferenca entre os endere?os
 			 addi $20, $20, 1 #quantidade de vezes que vai desenhar
 			  
 			 j flappyDistanciaObstaculos
 			
copiaFlappyEspacoObstaculosDistancia:  addi $6, $6, 6144 #diferenca entre os obstaculos
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
			  	         
#funcao desenhar obstaculo no topo
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
		     
flappyEspacoObstaculos: addi $6, $6, 6144 #diferenca entre os obstaculos
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


#funcao desenhar copia do fundo pros obstaculos
copiaFlappyObstaculoTopo: beq $23, $20, copiaFlappyEspacoObstaculos

 			 lw $7, 32784($6)
 			 sw $7, 16($6)
			 
			 lw $7, 33036($6)
 			 sw $7, 268($6)
 			 
 			 addi $6, $6, 512
 			 addi $20, $20, 1
 			 j copiaFlappyObstaculoTopo
 			
copiaFlappyEspacoObstaculos:  addi $6, $6, 6144 #diferenca entre os obstaculos
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
		          	  
#funcao desenho do passaro
desenhoFlappy: ori $11, $0, 0x546CF0 #azul do passaro
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
	       
#desenho do fundo com as copias para a movimentacao do passaro 
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

#funcao desenho do passaro
desenhoFlappyJade: ori $11, $0, 0x4CADCD #azul do passaro
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

#funcao desenho do coracao 
desenhoCoracaoFlappy: ori $20, 0xED1C24 #vermelho
		    addi $8, $8, -1516
		    sw $20, 0($8)
		    addi $8, $8, -516
		    sw $20, 0($8)
		    sw $20, 8($8)	
		    addi $8, $8, -516
		    sw $20, 0($8)
		    sw $20, 16($8)
		    addi $8, $8, -516
		    sw $20, 0($8)
		    sw $20, 24($8)
		    addi $8, $8, -24
		    sw $20, 0($8)
		    sw $20, 52($8)
		    sw $20, 4($8)
		    sw $20, 56($8)
		    sw $20, 8($8)
		    sw $20, 60($8)
		    sw $20, 12($8)
		    sw $20, 64($8)   
		    sw $20, 16($8)
		    sw $20, 68($8)
		    sw $20, 20($8)
		    sw $20, 72($8)
		    addi $8, $8, 508
		    addi $21, $0, 8
forLinhaCoracao: beq $21, $0, fimLinhaCoracao		    
		    sw $20, 0($8)
		    sw $20, 52($8)
		    addi $21, $21, -1
		    addi $8, $8, 4
		    j forLinhaCoracao
fimLinhaCoracao: addi $21, $0, 10
		 addi $8, $8, 476
forLinhaCoracao2: beq $21, $0, fimLinhaCoracao2
		 sw $20, 0($8)
		 sw $20, 52($8)
		 addi $21, $21, -1
	         addi $8, $8, 4
	         j forLinhaCoracao2
fimLinhaCoracao2: addi $21, $0, 12
		  addi $8, $8, 468
forLinhaCoracao3: beq $21, $0, fimLinhaCoracao3
		  sw $20, 0($8)	
		  sw $20, 52($8)
		  addi $21, $21, -1
		  addi $8, $8, 4
		  j forLinhaCoracao3		
fimLinhaCoracao3: addi $21, $0, 13		
		  addi $8, $8, 464
forLinhaCoracao4: beq $21, $0, fimLinhaCoracao4
		  sw $20, 0($8)
		  sw $20, 48($8)
		  addi $21, $21, -1
		  addi $8, $8, 4
		  j forLinhaCoracao4
fimLinhaCoracao4: addi $21, $0, 13
		  addi $8, $8, 460
forLinhaCoracao5: beq $21, $0, fimLinhaCoracao5
		  sw $20, 0($8)
		  sw $20, 48($8)
		  addi $21, $21, -1
		  addi $8, $8, 4
		  j forLinhaCoracao5
fimLinhaCoracao5: addi $21, $0, 7
		  addi $8, $8, 460
forLinhaCoracao6: beq $21, $0, fimLinhaCoracao6
		  sw $20, 0($8)
		  addi $21, $21, -1
		  addi $8, $8, 4
		  j forLinhaCoracao6
fimLinhaCoracao6: addi $8, $8, 16
		  sw $20, 0($8)
		  sw $20, 4($8)
		  addi $8, $8, 24
		  addi $21, $0, 8
forLinhaCoracao7: beq $21, $0, fimLinhaCoracao7
		  sw $20, 0($8)
		  addi $21, $21, -1
		  addi $8, $8, 4
		  j forLinhaCoracao7
fimLinhaCoracao7: addi $8, $8, 412
		  addi $21, $0, 8
forLinhaCoracao8: beq $21, $0, fimLinhaCoracao8
		  sw $20, 0($8)
		  sw $20, 512($8)
		  sw $20, 1024($8)
		  addi $21, $21, -1
		  addi $8, $8, 4
		  j forLinhaCoracao8
fimLinhaCoracao8: addi $8, $8, 40
		  addi $21, $0, 7
forLinhaCoracao9: beq $21, $0, fimLinhaCoracao9
		  sw $20, 0($8)
		  addi $21, $21, -1
		  addi $8, $8, 4
		  j forLinhaCoracao9
fimLinhaCoracao9: addi $8, $8, 480
		  addi $21, $0, 8
forLinhaCoracao10: beq $21, $0, fimLinhaCoracao10
		   sw $20, 0($8)
		   addi $21, $21, -1
		   addi $8, $8, 4		  
		   j forLinhaCoracao10
fimLinhaCoracao10: addi $8, $8, 476
		   addi $21, $0, 9
forLinhaCoracao11: beq $21, $0, fimLinhaCoracao11
		   sw $20, 0($8)
		   addi $21, $21, -1
		   addi $8, $8, 4
		   j forLinhaCoracao11
fimLinhaCoracao11: addi $8, $8, 416
		   sw $20, 0 ($8)
		   sw $20, 4($8)
		   sw $20, 8($8)
		   sw $20, 12($8)
		   sw $20, 16($8)
		   
		   sw $20, 40($8)
		   sw $20, 44($8)
		   sw $20, 64($8)
		   sw $20, 68($8)
		   sw $20, 72($8)
		   sw $20, 76($8)
		   sw $20, 80($8)
		   sw $20, 84($8)
		   sw $20, 88($8)
		   addi $8, $8, 516
		   sw $20, 0($8)
		   sw $20, 4($8)
		   sw $20, 8($8)
		   sw $20, 36($8)
		   sw $20, 40($8)
		   sw $20, 60($8)
	    	   sw $20, 64($8)
		   sw $20, 68($8)
		   sw $20, 72($8)
		   sw $20, 76($8)
		   sw $20, 80($8)
		   addi $8, $8, 516
		   addi $21, $0, 19
forLinhaCoracao12: beq $21, $0, fimLinhaCoracao12
		   sw $20, 0($8)
		   addi $21, $21, -1
		  addi $8, $8, 4
		 j forLinhaCoracao12
fimLinhaCoracao12: addi $8, $8, 440
		   addi $21, $0, 17
forLinhaCoracao13: beq $21, $0, fimLinhaCoracao13
		   sw $20, 0($8)
		   addi $21, $21, -1
		   addi $8, $8, 4
		   j forLinhaCoracao13
fimLinhaCoracao13: addi $8, $8, 448
		   addi $21, $0, 15
forLinhaCoracao14: beq $21, $0, fimLinhaCoracao14
		   sw $20, 0($8)
		   addi $21, $21, -1
		   addi $8, $8, 4
		   j forLinhaCoracao14
fimLinhaCoracao14: addi $8, $8, 456
		   addi $21, $0, 13
forLinhaCoracao15: beq $21, $0, fimLinhaCoracao15
		   sw $20, 0($8)
		   addi $21, $21, -1
		   addi $8, $8, 4
		   j forLinhaCoracao15
fimLinhaCoracao15: addi $8, $8, 464
		   addi $21, $0, 11
forLinhaCoracao16: beq $21, $0, fimLinhaCoracao16
		   sw $20, 0($8)
		   addi $21, $21, -1
		   addi $8, $8, 4
		   j forLinhaCoracao16
fimLinhaCoracao16: addi $8, $8, 472
		   addi $21, $0, 9
forLinhaCoracao17: beq $21, $0, fimLinhaCoracao17
		   sw $20, 0($8)
		   addi $21, $21, -1
		   addi $8, $8, 4
		   j forLinhaCoracao17
fimLinhaCoracao17: addi $8, $8, 484
		   addi $21, $0, 6
forLinhaCoracao18: beq $21, $0, fimLinhaCoracao18
		   sw $20, 0($8)	
		   addi $8, $8, 4
		   addi $21, $21, -1
		   j forLinhaCoracao18
fimLinhaCoracao18: addi $8, $8, 492	   
		   sw $20, 0($8)
		   sw $20, 4($8)
		   sw $20, 8($8)
		   sw $20, 12($8)
		   addi $8, $8, 516
		   sw $20, 0($8)
		   sw $20, 4($8)

		  jr $31	    
                         	       	       
# funcao Timer do blue
timerFlappy: sw $16, 0($29)
       	     addi $29, $29, -4
       	     addi $16, $0, 20000
forTimerFlappy:  beq $16, $0, fimTimerFlappy
       		 nop
       		 nop
       		 addi $16, $16, -1      
       		 j forTimerFlappy                  
fimTimerFlappy:  addi $29, $29, 4                                                    
       		 lw $16, 0($29)          
       		 jr $31

# funcao Timer do obstaculo
timerFlappyObstaculo: sw $16, 0($29)
       	     addi $29, $29, -4
       	     addi $16, $0, 10
forTimerFlappyObstaculo:  beq $16, $0, fimTimerFlappyObstaculo
       		 nop
       		 nop
       		 addi $16, $16, -1      
       		 j forTimerFlappyObstaculo                 
fimTimerFlappyObstaculo:  addi $29, $29, 4                                                    
       		 lw $16, 0($29)          
       		 jr $31
som:
    la $t0, notas       # Carregar endereço da tabela de notas
    li $t1, 55        # Número de notas a serem tocadas

loop:
    la $t0, notas       # Carregar endereço da tabela de notas
    li $t1, 5      # Número de notas a serem tocadas
    li $t1, 5      # Número de notas a serem tocadas

loop:
    lb $a0, 0($t0)      # crrega nota atual (pitch)
    lw $a1, duracao     # duração (500ms)
    lb $a2, instrumento # piano
    lb $a3, volume      #  volume (100)
    
    li $v0, 31         #  syscall 33 (toca nota e aguarda)
    syscall
    lb $a2 prato # prato
    lb $a3, volume      #  volume (100)
    li $v0, 31         #  syscall 33 (toca nota e aguarda)
    syscall

    addi $t0, $t0, 1    # Avai para a próxima nota
    subi $t1, $t1, 1    # decrementa contador
    bgtz $t1, loop      # Se ainda houver notas, repetir
    jr $31