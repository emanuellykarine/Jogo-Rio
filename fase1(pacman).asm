# Fase 1 Jogo Rio
# Azul do fundo: 0x546c8f 
# Preto das paredes: 0x000000
# salva o fundo em outro lugar da memoria: 131084($8) 
# Cinza grades: 0xb4b4b4
# Registradores sendo usados:
#			    $15 -> variaveis para loops
#			    $9 até $14, $16 -> cores
#			    $8, $7 e $6 -> espaço na memoria
#			    $20 -> tamanho da tela
#                           
.text
# O passáro branco tem que ser do tamanho do espaço entre as paredes verdes, pra ele poder se locomover atrás do blue
# pq o blue é menor que o passáro branco no filme

main:lui $8, 0x1001	   # fundo
     lui $7, 0x1001	   # muros e gaiolas com passaros
     # lui $6, 0x1001	   # gaiola com passaros
     ori $9, $0, 0x141d29  # Azul escuro
     ori $10, $0, 0x546d8f # Preto
     ori $11, $0, 0xb4b4b4 # Cinza da gaiola
     ori $12, $0, 0xfea3b1 # passaro da gaiola (rosa)
     ori $13, $0, 0xfff201 # passaro da gaiola (amarelo)
     ori $14, $0, 0xa8e61d # passaro da gaiola (verde)
     ori $16, $0, 0xfffffe # branco
     ori $17, $0, 0x474647 # bicos
     
     addi $20, $0, 8192    # Tamanho da tela toda
     addi $15 $0 16
FundoAzul: # Pinta todo o fundo azul
      beq $20, $0, MurosPretos_emL
      sw $9, 0($8)
      sw $9, 131084($8) # Salva para backup 
      addi $8, $8, 4
      addi $20, $20, -1
      j FundoAzul
##########################################################################
# Paredes Pretas
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
				beq $15 $0 fimParteSuperior
				sw $10 0($7)     # parte superior
				sw $10 31740($7) # parte inferior
				addi $7 $7 4
				addi $15 $15 -1
				j parte_superior_inferior
		fimParteSuperior:
		lui $7, 0x1001
		addi $15 $0 64
		partes_laterais:
			beq $15 $0 fimlaterais
				sw $10 0($7)     # parte esquerda
				sw $10 508($7)   # parte direita
				addi $7 $7 512
				addi $15 $15 -1
				j partes_laterais
		fimlaterais:
		addi $15 $0 10
		lui $8, 0x1001
		entrada_saida: 	beq $15 $0 fim_entrada_saida
				sw $9 13312($8)
				sw $9, 131084($8) # salva para bachup
				sw $9 13820($8)
				sw $9, 131084($8) # salva para bachup
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
			beq $15 $0 parte_laterais_quadrado
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
			sw $12 10804($7)
			sw $12 10808($7)
			sw $12 10812($7)
			sw $12 10816($7)
			sw $12 10820($7)
			
			sw $12 11320($7)
			sw $16 11324($7)
			sw $12 11332($7)
			
		
