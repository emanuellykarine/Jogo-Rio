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
.text
# O passáro branco tem que ser do tamanho do espaço entre as paredes verdes, pra ele poder se locomover atrás do blue
# pq o blue é menor que o passáro branco no filme

main:lui $8, 0x1001	   # fundo
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
