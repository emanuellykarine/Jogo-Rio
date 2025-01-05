.text
main: lui $8, 0x1001
      ori $9, $0, 0xA7E0F0 #azul claro
      addi $20, $0, 1310
     
test: beq $20, $0, fimAzul1
      sw $9, 0($8)
      addi $8, $8, 4
      addi $20, $20, -1
      j test
       
fimAzul1: ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 6 #A
   
test1: beq $20, $0, fimPart1
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test1

fimPart1: ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 123
     
testAzul2: beq $20, $0, fimAzul2
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul2
       
fimAzul2: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4
          
          ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 3
     
test2: beq $20, $0, fimtest2
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test2
        
fimtest2: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4
          
          ori $9, $0, 0xA7E0F0 #azul claro
          sw $9, 0($8)               
          addi $8, $8, 4
          
          ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 5 #P
   
test3: beq $20, $0, fimPart3
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test3
       
fimPart3: ori $9, $0, 0xA7E0F0 #azul claro
	  addi $20, $0, 9 

testAzul3: beq $20, $0, fimAzul3
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul3
           
fimAzul3: ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 5 #R
          
test4: beq $20, $0, fimPart4
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test4

fimPart4: ori $9, $0, 0xA7E0F0 #azul claro
	  sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 9 #T
          
test5: beq $20, $0, fimPart5
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test5     
           
fimPart5: ori $9, $0, 0xA7E0F0 #azul claro
	  sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 9 #E                                
          
test6: beq $20, $0, fimPart6
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test6   
     
fimPart6: ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 83
          
testAzul4: beq $20, $0, fimAzul4
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul4
           
fimAzul4: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4
          
          ori $9, $0, 0xA7E0F0 #azul claro  
          addi $20, $0, 3 #A
          
testAzul5: beq $20, $0, fimAzul5
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul5
           
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
          
testAzul6: beq $20, $0, fimAzul6
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul6
           
fimAzul6: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4 
          
          ori $9, $0, 0xA7E0F0 #azul claro
	  sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0x53B7E6 #azul escuro
	  addi $20, $0, 7 #E

test7: beq $20, $0, fimPart7
       sw $9, 0($8)
       addi $8, $8, 4 #E
       addi $20, $20, -1
       j test7
       
fimPart7: ori $9, $0, 0xA7E0F0 #azul claro
	  sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
          addi $8, $8, 4 #R
          
          ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 3
          
testAzul7: beq $20, $0, fimAzul7
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul7	  
	  
fimAzul7: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 5 #T
          
testAzul8: beq $20, $0, fimAzul8
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul8
           
fimAzul8: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 5 #T
          
testAzul9: beq $20, $0, fimAzul9
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul9
           
fimAzul9: ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
	  addi $8, $8, 4 
	  
	  ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 91
          
testAzul10: beq $20, $0, fimAzul10
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul10
	  
fimAzul10: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4 
	   
	  ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 3 #A
          
testAzul11: beq $20, $0, fimAzul11
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul11

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
             
testAzul12: beq $20, $0, fimAzul12
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul12
           
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
             
testAzul13: beq $20, $0, fimAzul13
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul13                   
	    
fimAzul13: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 3 #R
           
testAzul14: beq $20, $0, fimAzul14
           sw $9, 0($8)
           addi $8, $8, 4
           addi $20, $20, -1
           j testAzul14
           
fimAzul14: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #T
           
testAzul15: beq $20, $0, fimAzul15
            sw $9, 0($8)
            addi $8, $8, 4
            addi $20, $20, -1
            j testAzul15  
           
fimAzul15: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #T
           
testAzul16: beq $20, $0, fimAzul16
            sw $9, 0($8)
            addi $8, $8, 4
            addi $20, $20, -1
            j testAzul16
           
fimAzul16: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 91
           
testAzul17: beq $20, $0, fimAzul17
            sw $9, 0($8)
            addi $8, $8, 4
            addi $20, $20, -1
            j testAzul17                                                                                                                                                
	
fimAzul17: ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5
           
test8: beq $20, $0, fimPart8
       sw $9, 0($8)
       addi $8, $8, 4 #A
       addi $20, $20, -1
       j test8
       
fimPart8: ori $9, $0, 0xA7E0F0 #azul claro
          sw $9, 0($8)
	  addi $8, $8, 4
	  
          ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 5
           
test9: beq $20, $0, fimPart9
       sw $9, 0($8)
       addi $8, $8, 4 #P
       addi $20, $20, -1
       j test9
       
fimPart9: ori $9, $0, 0xA7E0F0 #azul claro
          sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0x53B7E6 #azul escuro
          sw $9, 0($8)
	  addi $8, $8, 4
	  
	  ori $9, $0, 0xA7E0F0 #azul claro
          addi $20, $0, 7
           
test10: beq $20, $0, fimPart10
        sw $9, 0($8)
        addi $8, $8, 4 #E
        addi $20, $20, -1
        j test10
       
fimPart10:ori $9, $0, 0x53B7E6 #azul escuro
          addi $20, $0, 5 
          
test11: beq $20, $0, fimPart11
        sw $9, 0($8)
        addi $8, $8, 4 #R
        addi $20, $20, -1
        j test11
                 
fimPart11: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5
          
test12: beq $20, $0, fimPart12
        sw $9, 0($8)
        addi $8, $8, 4 #R
        addi $20, $20, -1
        j test12
        
fimPart12: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5#T
           
test13: beq $20, $0, fimPart13
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test13
        
fimPart13: ori $9, $0, 0x53B7E6 #azul escuro
	   addi $20, $0, 7#E
	
test14: beq $20, $0, fimPart14
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test14

fimPart14: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 85
           
test15: beq $20, $0, fimPart15
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test15
        
fimPart15: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 3 #A
           
test16: beq $20, $0, fimPart16
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test16
 
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
           
test17: beq $20, $0, fimPart17
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test17
        
fimPart17: ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 7 #E
           
test18: beq $20, $0, fimPart18
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test18

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

test19: beq $20, $0, fimPart19
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test19
        
fimPart19: ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #T
           
test20: beq $20, $0, fimPart20
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test20
        
fimPart20: ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 91 #E
           
test21: beq $20, $0, fimPart21
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test21
                                
fimPart21: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 3 #A
           
test22: beq $20, $0, fimPart22
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test22
 
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
           
test23: beq $20, $0, fimPart23
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test23
        
fimPart23: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #E
           
test24: beq $20, $0, fimPart24
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test24

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

test25: beq $20, $0, fimPart25
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test25
        
fimPart25: ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #T
           
test26: beq $20, $0, fimPart26
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test26
        
fimPart26: ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 91 #E
           
test27: beq $20, $0, fimPart27
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test27
        
fimPart27: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
	   addi $8, $8, 4   
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 3 #A
           
test28: beq $20, $0, fimPart28
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test28
 
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
           
test29: beq $20, $0, fimPart29
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test29
        
fimPart29: ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 7 #E
           
test30: beq $20, $0, fimPart30
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test30

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

test31: beq $20, $0, fimPart31
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test31
        
fimPart31: ori $9, $0, 0x53B7E6 #azul escuro  
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 5 #T
           
test32: beq $20, $0, fimPart32
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test32
        
fimPart32: ori $9, $0, 0x53B7E6 #azul escuro  
	   addi $20, $0, 9 #E
	
test33: beq $20, $0, fimPart33
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test33
        
fimPart33: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 210
 
test34: beq $20, $0, fimPart34
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test34         
          
fimPart34:ori $9, $0, 0x53B7E6 #azul escuro  
	  addi $20, $0, 49
	  
test35: beq $20, $0, fimPart35
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test35
        
fimPart35: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 79
           
test36: beq $20, $0, fimPart36
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test36
        
fimPart36: ori $9, $0, 0x53B7E6 #azul escuro
	   sw $9, 0($8)
	   addi $8, $8, 4 
	   sw $9, 0($8)
	   addi $8, $8, 4
	   sw $9, 0($8)
	   addi $8, $8, 4
	   
	   ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #E

test37: beq $20, $0, fimPart37
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test37       
                  
fimPart37: ori $9, $0, 0x53B7E6 #azul escuro
	   addi $20, $0, 9 #S
	   
test38: beq $20, $0, fimPart38
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test38
        
fimPart38: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #P

test39: beq $20, $0, fimPart39
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test39
        
fimPart39: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #A
           
test40: beq $20, $0, fimPart40
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test40
       
fimPart40: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #Ç
           
test41: beq $20, $0, fimPart41
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test41    
                     
fimPart41:ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #O
           
test42: beq $20, $0, fimPart42
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test42   
        
fimPart42: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4  
           sw $9, 0($8)
           addi $8, $8, 4  
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 79
                    
test43: beq $20, $0, fimPart43
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test43            
       
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
           
test44: beq $20, $0, fimPart44
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test44     
        
fimPart44: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #S
           
test45: beq $20, $0, fimPart45
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test45  
        
fimPart45: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4   
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
    
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P
      
test46: beq $20, $0, fimPart46
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test46 

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
           
test47: beq $20, $0, fimPart47
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test47

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

test48: beq $20, $0, fimPart48
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test48  
        
fimPart48: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4  
           
	   ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5 #O
           
test49: beq $20, $0, fimPart49
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test49
        
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
           
test50: beq $20, $0, fimPart50
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test50
                                                                                                                                                                                                                                                                                                                                                                   
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
           
test51: beq $20, $0, fimPart51
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test51    
        
fimPart51: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 6 #S
                      
test52: beq $20, $0, fimPart52
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test52  

fimPart52: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P
                      
test53: beq $20, $0, fimPart53
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test53
        
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
                      
test54: beq $20, $0, fimPart54
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test54
        
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
           
test55: beq $20, $0, fimPart55
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test55

fimPart55: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4         
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5 #O
           
test56: beq $20, $0, fimPart56
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test56 
        
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
           
test57: beq $20, $0, fimPart57
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test57            
            
fimPart57: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
          
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 7 #E
           
test58: beq $20, $0, fimPart58
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test58         

fimPart58: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #S
           
test59: beq $20, $0, fimPart59
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test59
        
fimPart59: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4  
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #P
           
test60: beq $20, $0, fimPart60
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test60
        
fimPart60: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #A
           
test61: beq $20, $0, fimPart61
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test61  
        
fimPart61: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4  
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro                  
           addi $20, $0, 7 #Ç
           
test62: beq $20, $0, fimPart62
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test62

fimPart62: 
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4         
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5 #O
           
test63: beq $20, $0, fimPart63
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test63 
        
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
           
test64: beq $20, $0, fimPart64
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test64
                    
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
           
test65: beq $20, $0, fimPart65
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test65   
        
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

test66: beq $20, $0, fimPart66
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test66  
        
fimPart66: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P

test67: beq $20, $0, fimPart67
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test67   
                          
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
           
test68: beq $20, $0, fimPart68
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test68

fimPart68: 
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4         
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5 #O
           
test69: beq $20, $0, fimPart69
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test69 
        
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
           
test70: beq $20, $0, fimPart70
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test70
                    
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
           
test71: beq $20, $0, fimPart71
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test71
        
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

test72: beq $20, $0, fimPart72
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test72  
        
fimPart72: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P

test73: beq $20, $0, fimPart73
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test73  
                          
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
           
test74: beq $20, $0, fimPart74
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test74

fimPart74: 
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4         
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 5 #O
           
test75: beq $20, $0, fimPart75
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test75 
        
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
           
test76: beq $20, $0, fimPart76
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test76
  
fimPart76: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 7 #E

test77: beq $20, $0, fimPart77
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test77           
           
fimPart77: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 6 #S

test78: beq $20, $0, fimPart78
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test78
        
fimPart78: ori $9, $0, 0x53B7E6 #azul escuro
   	   sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 6 #P

test79: beq $20, $0, fimPart79
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test79 
                          
fimPart79:
           ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
	   ori $9, $0, 0x53B7E6 #azul escuro                  
           addi $20, $0, 4 #A
           
test80: beq $20, $0, fimPart80
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test80

fimPart80: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 7 #Ç
           
test81: beq $20, $0, fimPart81
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test81 
           
fimPart81: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 7 #O
           
test82: beq $20, $0, fimPart82
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test82 

fimPart82: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 79
           
test83: beq $20, $0, fimPart83
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test83
        
fimPart83:  ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 35
            
test84: beq $20, $0, fimPart84
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test84

fimPart84: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
            
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 13
            
test85: beq $20, $0, fimPart85
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test85  
        
fimPart85: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 209
           
test86: beq $20, $0, fimPart86
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test86
        
fimPart86: ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P
           
test87: beq $20, $0, fimPart87
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test87
        
fimPart87: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
test88: beq $20, $0, fimPart88
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test88

fimPart88: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #R
           
test89: beq $20, $0, fimPart89
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test89         
        
fimPart89: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
test90: beq $20, $0, fimPart90
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test90     
   
fimPart90: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           sw $9, 0($8)
           addi $8, $8, 4    
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #J
           
test91: beq $20, $0, fimPart91
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test91
        
fimPart91: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #O
           
test92: beq $20, $0, fimPart92
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test92       

fimPart92: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #G
           
test93: beq $20, $0, fimPart93
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test93                
        
fimPart93: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
test94: beq $20, $0, fimPart94
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test94       
        
fimPart94: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #R
           
test95: beq $20, $0, fimPart95
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test95         
        
fimPart95: ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 44

test96: beq $20, $0, fimPart96
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test96 
	   
fimPart96: ori $9, $0, 0x0085BB #azul do blue
           sw $9, 0($8)
           addi $8, $8, 4

           ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 38

test97: beq $20, $0, fimPart97
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test97 
	   
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

test98: beq $20, $0, fimPart98
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test98 
	   
fimPart98: ori $9, $0, 0x0085BB #azul do blue
           sw $9, 0($8)
           addi $8, $8, 4
           
           
           ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 38

test99: beq $20, $0, fimPart99
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test99 

fimPart99: ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #P
           
test100: beq $20, $0, fimPart100
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test100
        
fimPart100: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
test101: beq $20, $0, fimPart101
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test101

fimPart101: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #R
           
test102: beq $20, $0, fimPart102
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test102         
        
fimPart102: ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #A
           
test103: beq $20, $0, fimPart103
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test103
        
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
           
test104: beq $20, $0, fimPart104
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test104

fimPart104:ori $9, $0, 0xA7E0F0 #azul claro
           sw $9, 0($8)
           addi $8, $8, 4 
           
           ori $9, $0, 0x53B7E6 #azul escuro
           addi $20, $0, 4 #R
           
test105: beq $20, $0, fimPart105
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test105 

fimPart105: ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 39

test106: beq $20, $0, fimPart106
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test106 
	   
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

test107: beq $20, $0, fimPart107
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test107
        
fimPart107:ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #P
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 4 

test108: beq $20, $0, fimPart108
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test108           

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

test109: beq $20, $0, fimPart109
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test109
	   
fimPart109: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 10
            
test110: beq $20, $0, fimPart110
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test110
          
          
fimPart110:  ori $9, $0, 0xA7E0F0 #azul claro
	   addi $20, $0, 35

test111: beq $20, $0, fimPart111
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test111

fimPart111: ori $9, $0, 0x53B7E6 #azul escuro
           sw $9, 0($8)
           addi $8, $8, 4 #P
           
           ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 4 

test112: beq $20, $0, fimPart112
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test112         

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

test113: beq $20, $0, fimPart113
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test113
	   
fimPart113: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 11
            
test114: beq $20, $0, fimPart114
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test114            

fimPart114: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 116
           
test115: beq $20, $0, fimPart115
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test115  
        
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
            
test116: beq $20, $0, fimPart116
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test116 

fimPart116: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 116
           
test117: beq $20, $0, fimPart117
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test117 
        
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
            
test118: beq $20, $0, fimPart118
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test118 

fimPart118: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 114
           
test119: beq $20, $0, fimPart119
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test119 
        
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
            
test120: beq $20, $0, fimPart120
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test120

fimPart120: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 113
           
test121: beq $20, $0, fimPart121
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test121 
        
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
            
test122: beq $20, $0, fimPart122
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test122
        
fimPart122: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 113
           
test123: beq $20, $0, fimPart123
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test123 
        
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
            
test124: beq $20, $0, fimPart124
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test124
        
fimPart124: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 112
           
test125: beq $20, $0, fimPart125
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test125 
        
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
            
test126: beq $20, $0, fimPart126
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test126
        
fimPart126: ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 112
           
test127: beq $20, $0, fimPart127
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test127 
        
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
            
test128: beq $20, $0, fimPart128
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test128
        
fimPart128: ori $9, $0, 0xA7E0F0 #azul claro
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 20
            
test129: beq $20, $0, fimPart129
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test129 
        
fimPart129:  ori $9, $0, 0xA7E0F0 #azul claro
	     addi $20, $0, 60
	  
test130: beq $20, $0, fimPart130
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test130                   

fimPart130: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 20
            
test131: beq $20, $0, fimPart131
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test131       
        
fimPart131:  ori $9, $0, 0xA7E0F0 #azul claro
	     addi $20, $0, 10 
	    
test132: beq $20, $0, fimPart132
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test132  
        
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
            
test133: beq $20, $0, fimPart133
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test133
        
fimPart133: ori $9, $0, 0xA7E0F0 #azul claro
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            sw $9, 0($8)
            addi $8, $8, 4
            
            ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 40
            
test134: beq $20, $0, fimPart134
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test134
    
fimPart134: ori $9, $0, 0xA7E0F0 #azul claro
	     addi $20, $0, 35 
	    
test135: beq $20, $0, fimPart135
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test135
        
fimPart135: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 30
            
test136: beq $20, $0, fimPart136
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test136       
        
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
            
test137: beq $20, $0, fimPart137
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test137

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
            
test138: beq $20, $0, fimPart138
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test138          

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
            
test139: beq $20, $0, fimPart139
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test139
        
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
            
test140: beq $20, $0, fimPart140
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test140            
        
fimPart140: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 8
            
test141: beq $20, $0, fimPart141
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test141
        
fimPart141:     
            ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 119
            
test142: beq $20, $0, fimPart142
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test142            
        
fimPart142: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 10
            
test143: beq $20, $0, fimPart143
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test143
        
fimPart143: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 33
            
test144: beq $20, $0, fimPart144
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test144            
        
fimPart144: ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 7
            
test145: beq $20, $0, fimPart145
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test145
        
fimPart145: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 77
            
test146: beq $20, $0, fimPart146
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test146            
        
fimPart146: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 12
            
test147: beq $20, $0, fimPart147
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test147
 
fimPart147: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 29
            
test148: beq $20, $0, fimPart148
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test148            
        
fimPart148: ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 13
            
test149: beq $20, $0, fimPart149
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test149
        
fimPart149: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 73
            
test150: beq $20, $0, fimPart150
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test150            
        
fimPart150: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 14
            
test151: beq $20, $0, fimPart151
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test151
 
fimPart151: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 27
            
test152: beq $20, $0, fimPart152
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test152            
        
fimPart152: ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 20
            
test153: beq $20, $0, fimPart153
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test153

fimPart153: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 67
            
test154: beq $20, $0, fimPart154
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test154            
        
fimPart154: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 15
            
test155: beq $20, $0, fimPart155
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test155
 
fimPart155:  ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 15
            
test156: beq $20, $0, fimPart156
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test156            
        
fimPart156: ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 37
            
test157: beq $20, $0, fimPart157
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test157

fimPart157: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 60
            
test158: beq $20, $0, fimPart158
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test158            
        
fimPart158: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 16
            
test159: beq $20, $0, fimPart159
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test159
 
fimPart159:  ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 57
            
test160: beq $20, $0, fimPart160
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test160

fimPart160: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 55
                      
test161: beq $20, $0, fimPart161
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test161            
        
fimPart161: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 16
            
test162: beq $20, $0, fimPart162
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test162
 
fimPart162: ori $9, $0, 0x6CA57A #verde claro
	    addi $20, $0, 18
            
test163: beq $20, $0, fimPart163
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test163
        
fimPart163: ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 50
            
test164: beq $20, $0, fimPart164
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test164

fimPart164: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 44
                      
test165: beq $20, $0, fimPart165
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test165            
        
fimPart165: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 10
            
test166: beq $20, $0, fimPart166
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test166
 
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
            
test167: beq $20, $0, fimPart167
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test167
        
fimPart167:ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 44
            
test168: beq $20, $0, fimPart168
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test168

fimPart168: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 43
                      
test169: beq $20, $0, fimPart169
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test169            
        
fimPart169: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 9
            
test170: beq $20, $0, fimPart170
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test170
 
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
            
test171: beq $20, $0, fimPart171
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test171
        
fimPart171:ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 34
            
test172: beq $20, $0, fimPart172
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test172

fimPart172: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 38
                      
test173: beq $20, $0, fimPart173
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test173            
        
fimPart173: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 9
            
test174: beq $20, $0, fimPart174
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test174
 
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
            
test175: beq $20, $0, fimPart175
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test175
 
fimPart175: ori $9, $0, 0x6CA57A #verde claro
	    addi $20, $0, 20
            
test176: beq $20, $0, fimPart176
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test176
        
fimPart176:ori $9, $0, 0x5E9172 #verde musgo
	    addi $20, $0, 20
            
test177: beq $20, $0, fimPart177
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test177

fimPart177: ori $9, $0, 0xBDC4AB #amarelo areia
            addi $20, $0, 9
            
test178: beq $20, $0, fimPart178
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test178
 
fimPart178: ori $9, $0, 0x5E9172 #verde musgo
            addi $20, $0, 14
            
test179: beq $20, $0, fimPart179
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test179
 
fimPart179: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 39
                      
test180: beq $20, $0, fimPart180
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test180            
        
fimPart180: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 9
            
test181: beq $20, $0, fimPart181
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test181
 
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
            
test182: beq $20, $0, fimPart182
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test182
 
fimPart182: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 61
                      
test183: beq $20, $0, fimPart183
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test183            
        
fimPart183: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 9
            
test184: beq $20, $0, fimPart184
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test184
 
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
            
test185: beq $20, $0, fimPart185
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test185
 
fimPart185: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 8
            
test186: beq $20, $0, fimPart186
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test186
 
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
            
test187: beq $20, $0, fimPart187
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test187
 
fimPart187: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 17
            
test188: beq $20, $0, fimPart188
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test188
 
fimPart188: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 112
            
test189: beq $20, $0, fimPart189
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test189
 
fimPart189: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 16
            
test190: beq $20, $0, fimPart190
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test190
 
fimPart190: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 113
            
test191: beq $20, $0, fimPart191
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test191
 
fimPart191: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 15
            
test192: beq $20, $0, fimPart192
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test192
 
fimPart192: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 114
            
test193: beq $20, $0, fimPart193
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test193
 
fimPart193: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 14
            
test194: beq $20, $0, fimPart194
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test194
 
fimPart194: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 114
            
test195: beq $20, $0, fimPart195
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test195
 
fimPart195: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 14
            
test196: beq $20, $0, fimPart196
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test196
 
fimPart196: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 115
            
test197: beq $20, $0, fimPart197
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test197
 
fimPart197: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 13
            
test198: beq $20, $0, fimPart198
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test198
 
fimPart198: ori $9, $0, 0x53B7E6 #azul escuro
            addi $20, $0, 115
            
test199: beq $20, $0, fimPart199
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test199
 
fimPart199: ori $9, $0, 0x0085BB #azul do blue
            addi $20, $0, 13
            
test200: beq $20, $0, fimPart200
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test200
 
fimPart200:
       addi $2, $0, 10
  	    syscall
