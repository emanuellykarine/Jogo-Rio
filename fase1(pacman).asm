.data
.text
# O passáro branco tem que ser do tamanho do espaço entre as paredes verdes, pra ele poder se locomover atrás do blue
# pq o blue é menor que o passáro branco no filme

main:lui $8, 0x1001	   # fundo
     lui $7, 0x1001	   # parte verde
     ori $9, $0, 0x546c8f  # azul claro
     ori $10, $0, 0x22b14c # verde claro
    
     addi $20, $0, 7296    # Tamanho da tela toda
     # TECLAS DE COMANDO DO JOGADOR
     addi $11, $0, 'a'
     addi $12, $0, 'd'
     addi $13, $0, 's'
     addi $14, $0, 'w'	
     addi $15 $0 16
FundoAzul: # Pinta todo o fundo azul
      beq $20, $0, MurosVerdes_emL
      sw $9, 0($8)
      sw $9, 2048($8) # Salva para backup 
      addi $8, $8, 4
      addi $20, $20, -1
      j FundoAzul
MurosVerdes_emL:
      	parte_de_cima: 
      		beq $15 $0 fim_parte_cima
      		sw $10 640($7) # parte de cima do L1
      		sw $9, 2048($8) # Salva para backup 
      		sw $10 832($7) # parte de cima do L2
      		sw $9, 2048($8) # Salva para backup 
      		addi $7 $7 4
      		addi $15 $15 -1
      		j parte_de_cima
      	fim_parte_cima:
		addi $15 $0 8
	parte_laterais:
		beq $15 $0 fim_laterais
		sw $10 572($7)  # parte de cima do L1
		sw $9, 2048($8) # Salva para backup 
      		sw $10 832($7)  # parte de cima do L2
      		sw $9, 2048($8) # Salva para backup 
      		addi $7 $7 512
      		addi $15 $15 -1
		j parte_laterais
	fim_laterais:
	addi $7 $7 0
jaula_central:
	addi $15 $0 24
	laterais_da_jaula: 
			beq $15 $0 fim_laterais_da_jaula
			sw $10 5180($7) # parte lateral da jaula
			sw $9, 2048($8) # Salva para backup 
			
			sw $10 5440($7) # parte lateral da jaula
			sw $9, 2048($8) # Salva para backup 
			addi $7 $7 512
			addi $15 $15 -1
			j laterais_da_jaula
	fim_laterais_da_jaula:
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
			sw $9, 2048($8) # Salva para backup
			sw $10 5360($7)
			sw $9, 2048($8) # Salva para backup
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
			beq $15 $0 fim_parte_superior
			sw $10 11384($7) # parte lateral da jaula
			# sw $9, 2048($8) # Salva para backup
			addi $15 $15 -1
			addi $7 $7 4
			j parte_inferior
		fim_parte_superior:
		# faz mais sentido começar da parte superior depois ir pra lateral e terminar a parte inferior, do que ficar rodando que nem barata tonta
			
