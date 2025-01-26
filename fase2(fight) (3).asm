.text
#Parte 3 -  Etapa 2 - Fight
#Nome dos lacos/Localizadores: fightCeu, fimFightCeu, fightNuvemBr, fimFightNuvemBr, fightNuvemAz, fimFightNuvemAz, fightHorizonte, fimFightHorizonte, 
#fightMar, fimFightMar, fightPedra, fimFightPedra, fightEspuma, fimFightEspuma, fightAreia, fimFightAreia   
#Registradores usados: $6, $7, $8 (endereco de memoria), $9 (cores cenario), $10 (acao Nigel), $11, $12, $13, $14, $15, $16, $17, $18, $19 (cores personagens), 
#$20, $21 (inicio: contador - depois: $20 diferenca do endereco e $21 teclado), $22, $23, $24 (endereco temporario), $25 (timer),    
#Cores cenario: Azul ceu: 0x62abd3 - Branco nuvem/espuma: 0xfbfffe - Azul nuvem: 0x82dbda - Azul mar horizonte: 0x0a6f98 - Azul mar escuro: 0x0f99c9 - Azul mar medio: 0x31c3da 
#Azul mar claro: 0x5bdfe1 - Verde claro: 0xaad770 - Verde escuro: 0x45632f - Cinza claro: 0x7b7b7b - Cinza escuro: 0x444442 - Areia molhada: 0xf2d06c - Areia seca: 0xfce7b0
#Cores personagens: Azul do Blue: 0x546CF0 - Azul escuro do Blue: 0x333597 - Branco: 0xFCFFFD - Preto: 0x0C0D0D - Cinza bico Blue e penas Nigel: 0xB4B4B4 
#Cinza bico Nigel: 0x464646 - Rosa Nigel: 0xBD768E - Amarelo Nigel: 0xF9BB0B - Roxo acai�: 0x9D09A5 
    
main:   lui $8, 0x1001
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
	add $27, $0, $0

	lui $28, 0xffff #teclado
	addi $25, $0, 'w' #move para cima
     	addi $26, $0, 'a' #move para esquerda 	

#acao nigel
	addi $21, $0, 12 #andar do Nigel
	addi $10, $0, -4 #subtracao do endereco do Nigel
	
acaoNigel:
	lui $20, 0x1001 #posicao inicial colisao do acai
	addi $20, $20, 29280 #posicao da colisoa 
	jal desenhoNigel
	jal desenhoBlue
	jal desenhoAcai
        
        jal timerFightNigel
        
        jal copiaFundoNigel
	jal copiaFundoAcai
	jal copiaFundoBlue
	
	add $8, $8, $10 #mudanca endereco Nigel

	addi $7, $7, -4 #mudanca de endereco Acai  	
	
	addi $21, $21, -1 #andar do Nigel -1

	beq $7, $20, fimAcai #checar se o acao chegar na colisao vai pro fimAcai
	beq $21, $0, voltaNigel #se o andar o Nigel chegar 12 a frente, ele volta
	
	beq $9, -5120, Descida
	
	#lw $27, 0($7)
	#beq $27, $15, fimDesenhoFight
	
	lw $20, 0($28) #estado do teclado
	beq $20, $0, continuacaoFight 
	lw $20, 4($28)
	beq $20, $25, bluePular
	lw $20, 4($28)
	beq $20, $26, blueAndarTras      
	
	j acaoNigel
	
voltaNigel: 
	addi $20, $0, -1 #-1 para multiplicar o $10
	mul $10, $10, $20 #tornar o $10 em 4/-4 para o Nigel voltar na direcao contraria    
 	addi $21, $0, 12 #reset do $21  
 	
 	beq $7, $20, fimAcai #checar se o acao chegar na colisao vai pro fimAcai
	
 	j acaoNigel
 	
fimAcai: 
	add $7, $0, $8 #volta o acai pra posicao em que o Nigel esta 
	addi $7, $7, 2524 #poe o acai na boca do Nigel
	beq $21, $0, voltaNigel
	
	j acaoNigel
	
bluePular: addi $9, $0, -5120
	add $6, $6, $9 #diminui o valor do endereco do inicial do Blue
		
	jal desenhoBlue
	
	jal copiaFundoBlue

	j continuacaoFight
	
Descida: 
	addi $9, $0, 5180
	add $6, $6, $9

	j continuacaoFight
	
blueAndarFrente:
	addi $6, $6, 8 #move o blue 1 casa pra frente
		
	jal desenhoBlue
	
	jal copiaFundoBlue
	
	j continuacaoFight
	
blueAndarTras:
	addi $6, $6, -8 #move o blue 1 casa pra tras
		
	jal desenhoBlue
	
	jal copiaFundoBlue
	
	j continuacaoFight
	
continuacaoFight: j acaoNigel

fimDesenhoFight:
	jal desenhoNigel
	jal desenhoAcai
	jal desenhoBlue
	addi $2, $0, 10
        syscall
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
	
	sw $19, 512($7)
	sw $19, 516($7)
	
	jr $31
	
#desenho do fundo com as copias para a movimentacao do acai
copiaFundoAcai:
	lw $23, 32768($7) #0($7)
	sw $23, 0($7) 
	lw $23, 32772($7) #4($7)
	sw $23, 4($7) 
	
	lw $23, 33280($7) #512($7)
	sw $23, 512($7) 		     	 			     	 	
	lw $23, 33284($7) #516($7)
	sw $23, 516($7) 		     	 			     	 	
	
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
	addi $25, $0, 60000
	
forTimerFightNigel: beq $25, $0, fimTimerFightNigel
	nop
	nop
	addi $25, $25, -1
	j forTimerFightNigel

fimTimerFightNigel: addi $29, $29, 4
	lw $25, 0($29)
	jr $31 
	