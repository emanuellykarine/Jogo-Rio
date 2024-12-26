.text
main: lui $8, 0x1001
      ori $9, $0, 0x6FD2E9 #azul claro
      addi $20, $0, 1040
     
test: beq $20, $0, fimAzul1
      sw $9, 0($8)
      addi $8, $8, 4
      addi $20, $20, -1
      j test
       
fimAzul1: ori $9, $0, 0x88E3F0
          addi $20, $0, 100
          
test1: beq $20, $0, fimAzul2
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test1
        
fimAzul2: ori $9, $0, 0x6FD2E9 #azul claro
          addi $20, $0, 25

test2: beq $20, $0, fimAzul3
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test2
      
fimAzul3: ori $9, $0, 0xBDE9F2
          addi $20, $0, 10
          
test3: beq $20, $0, fimAzul4
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test3
       
fimAzul4: addi $2, $0, 10
          syscall