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
        
fimPart85:  ori $9, $0, 0xA7E0F0 #azul claro
           addi $20, $0, 207
           
test86: beq $20, $0, fimPart86
        sw $9, 0($8)
        addi $8, $8, 4 
        addi $20, $20, -1
        j test86
        
fimPart86:addi $2, $0, 10
  	   syscall        
