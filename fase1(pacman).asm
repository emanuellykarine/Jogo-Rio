# Fase 1 Jogo Rio
# Azul do fundo: 0x546c8f 
# Preto das paredes: 0x000000
# salva o fundo em outro lugar da memoria: 131084($8) 
# Cinza grades: 0xb4b4b4
#
#
#
#

.text
# O passáro branco tem que ser do tamanho do espaço entre as paredes verdes, pra ele poder se locomover atrás do blue
# pq o blue é menor que o passáro branco no filme

main:lui $8, 0x1001	   # fundo
     lui $7, 0x1001	   # muros
     ori $9, $0, 0x2f3699  # Azul escuro
     ori $10, $0, 0x000000 # Preto
     ori $11, $0, 0xb4b4b4 # Preto
    
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
	quadrados_superior:
		parte_superior_quadrado:
			beq $15 $0 parte_laterais_quadrado
			sw $10 3636($7)  
			sw $10 4012($7) 
			sw $10 28212($7)  
			sw $10 28588($7) 
			addi $15 $15 -1
			addi $7 $7 4
			j parte_superior_quadrado
		parte_laterais_quadrado:
			
