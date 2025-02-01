.text
main:   lui $8, 0x1001
        ori $9, $0, 0x62abd3 #azul ceu
        addi $20, $0, 825
test:   beq $20, $0, tpnvl1
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test 
tpnvl1: ori $9, $0, 0xfbfffe #branco     
             addi $20, $0, 831
             addi $21, $0, 826
test2: beq $20, $21, ctlin1
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test2
ctlin1: ori $9, $0, 0x62abd3
        addi $20, $0, 952
        addi $21, $0, 831
test3:   beq $20, $21, tpnvl2
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test3
tpnvl2: ori $9, $0, 0xfbfffe     
             addi $20, $0, 960
             addi $21, $0, 952
test4: beq $20, $21, ctlin2
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test4
ctlin2: ori $9, $0, 0x62abd3
        addi $20, $0, 1079
        addi $21, $0, 960
test5:   beq $20, $21, tpnvl3
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test5
tpnvl3: ori $9, $0, 0xfbfffe     
             addi $20, $0, 1091
             addi $21, $0, 1079
test6: beq $20, $21, ctlin3
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test6
ctlin3: ori $9, $0, 0x62abd3
        addi $20, $0, 1157
        addi $21, $0, 1091
test7:   beq $20, $21, tpnvl41
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test7
tpnvl41: ori $9, $0, 0xfbfffe     
             addi $20, $0, 1166
             addi $21, $0, 1157
test8: beq $20, $21, ctlin4
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test8
ctlin4: ori $9, $0, 0x62abd3
        addi $20, $0, 1209
        addi $21, $0, 1168
test9:   beq $20, $21, tpnvl42
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test9
tpnvl42: ori $9, $0, 0xfbfffe     
         addi $20, $0, 1217
         addi $21, $0, 1209
test10: beq $20, $21, ctlin5
       sw $9, 0($8)
       addi $8, $8, 4
       addi $20, $20, -1
       j test10
ctlin5: ori $9, $0, 0x82dbda #azul da nuvem
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin6: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin7: ori $9, $0, 0x62abd3
        addi $20, $0, 1288
        addi $21, $0, 1223
test11: beq $20, $21, tpnvl51
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test11
tpnvl51: ori $9, $0, 0x82dbda
         addi $20, $0, 1296
         addi $21, $0, 1288
test12: beq $20, $21, tpnvl52
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test12
tpnvl52: ori $9, $0, 0xfbfffe
         addi $20, $0, 1305
         addi $21, $0, 1296
test13: beq $20, $21, ctlin8
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test13
ctlin8: ori $9, $0, 0x62abd3
        addi $20, $0, 1333
        addi $21, $0, 1305
test14: beq $20, $21, tpnvl53
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test14
tpnvl53: ori $9, $0, 0xfbfffe
         addi $20, $0, 1347
         addi $21, $0, 1333
test15: beq $20, $21, ctlin9
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test15
ctlin9: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin10: ori $9, $0, 0xfbfffe
	 sw $9, 0($8)
         addi $8, $8, 4
         sw $9, 0($8)
         addi $8, $8, 4
         sw $9, 0($8)
         addi $8, $8, 4
ctlin11: ori $9, $0, 0x62abd3
         sw $9, 0($8)
         addi $8, $8, 4
         sw $9, 0($8)
         addi $8, $8, 4
         sw $9, 0($8)
         addi $8, $8, 4
ctlin12: ori $9, $0, 0xfbfffe
	 sw $9, 0($8)
         addi $8, $8, 4
         sw $9, 0($8)
         addi $8, $8, 4
         sw $9, 0($8)
         addi $8, $8, 4
         sw $9, 0($8)
         addi $8, $8, 4
ctlin13: ori $9, $0, 0x62abd3
        addi $20, $0, 1417
        addi $21, $0, 1359
test16: beq $20, $21, tpnvl61
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test16
tpnvl61: ori $9, $0, 0x82dbda
         addi $20, $0, 1429
         addi $21, $0, 1417
test17: beq $20, $21, tpnvl62
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test17
tpnvl62: ori $9, $0, 0xfbfffe
         addi $20, $0, 1434
         addi $21, $0, 1429
test18: beq $20, $21, ctlin14
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test18
ctlin14: ori $9, $0, 0x62abd3
        addi $20, $0, 1460
        addi $21, $0, 1434
test19: beq $20, $21, tpnvl63
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test19
tpnvl63: ori $9, $0, 0xfbfffe
         addi $20, $0, 1472
         addi $21, $0, 1460
test20: beq $20, $21, ctlin15
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test20
ctlin15: ori $9, $0, 0x82dbda
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
ctlin16: ori $9, $0, 0xfbfffe
         addi $20, $0, 1488
         addi $21, $0, 1476
test21: beq $20, $21, ctlin17
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test21
ctlin17: ori $9, $0, 0x62abd3
         addi $20, $0, 1553
         addi $21, $0, 1488
test22: beq $20, $21, tpnvl71
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test22
tpnvl71: ori $9, $0, 0x82dbda
         addi $20, $0, 1560
         addi $21, $0, 1553
test23: beq $20, $21, tpnvl72
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test23
tpnvl72: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin18:ori $9, $0, 0x62abd3
         addi $20, $0, 1584
         addi $21, $0, 1560
test24: beq $20, $21, tpnvl73
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test24
tpnvl73: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin19: ori $9, $0, 0x82dbda
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin20: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin21: ori $9, $0, 0x82dbda
         addi $20, $0, 1605
         addi $21, $0, 1593
test25: beq $20, $21, ctlin22
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test25 
ctlin22: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin23:ori $9, $0, 0x82dbda
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin24:ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
ctlin25: ori $9, $0, 0x82dbda
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin26: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
         sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin27: ori $9, $0, 0x62abd3
         addi $20, $0, 1655
         addi $21, $0, 1617
test26: beq $20, $21, tpnvl74
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test26
tpnvl74: ori $9, $0, 0xfbfffe
         addi $20, $0, 1665
         addi $21, $0, 1655
test27: beq $20, $21, ctlin28
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test27
ctlin28: ori $9, $0, 0x62abd3
         addi $20, $0, 1700
         addi $21, $0, 1655
test28: beq $20, $21, tpnvl81
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test28
tpnvl81: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin29: ori $9, $0, 0x82dbda
	 addi $20, $0, 1724
         addi $21, $0, 1704
test29: beq $20, $21, ctlin30
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test29
ctlin30: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin31: ori $9, $0, 0x82dbda
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
ctlin32: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin33: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
ctlin34: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin35: ori $9, $0, 0x62abd3
         addi $20, $0, 1766
         addi $21, $0, 1736
test30: beq $20, $21, ctlin36
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test30
ctlin36: ori $9, $0, 0xfbfffe
	 addi $20, $0, 1775
         addi $21, $0, 1766
test31: beq $20, $21, ctlin37
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test31
ctlin37: ori $9, $0, 0x82dbda
	addi $20, $0, 1784
        addi $21, $0, 1775
test32: beq $20, $21, ctlin38
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test32
ctlin38: ori $9, $0, 0x62abd3
         addi $20, $0, 1828
         addi $21, $0, 1785
test33: beq $20, $21, ctlin39
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test33
ctlin39: ori $9, $0, 0x82dbda
	addi $20, $0, 1840
        addi $21, $0, 1828
test34: beq $20, $21, ctlin40
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test34
ctlin40: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin41:ori $9, $0, 0x82dbda
	addi $20, $0, 1852
        addi $21, $0, 1842
test35: beq $20, $21, ctlin42
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test35
ctlin42: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4
ctlin43: ori $9, $0, 0x82dbda
	addi $20, $0, 1859
        addi $21, $0, 1853
test36: beq $20, $21, ctlin44
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test36
ctlin44: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4 
        sw $9, 0($8)
        addi $8, $8, 4 
        sw $9, 0($8)
        addi $8, $8, 4 
        sw $9, 0($8)
        addi $8, $8, 4
ctlin45: ori $9, $0, 0x82dbda
        sw $9, 0($8)
        addi $8, $8, 4 
        sw $9, 0($8)
        addi $8, $8, 4
ctlin46: ori $9, $0, 0xfbfffe
        sw $9, 0($8)
        addi $8, $8, 4  
ctlin47: ori $9, $0, 0x82dbda
        sw $9, 0($8)
        addi $8, $8, 4 
        sw $9, 0($8)
        addi $8, $8, 4
ctlin48: ori $9, $0, 0x62abd3
         addi $20, $0, 1891
         addi $21, $0, 1868
test37: beq $20, $21, ctlin49
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test37
ctlin49: ori $9, $0, 0x82dbda
	addi $20, $0, 1903
        addi $21, $0, 1891
test38: beq $20, $21, ctlin50
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test38
ctlin50: ori $9, $0, 0x62abd3
         addi $20, $0, 1912
         addi $21, $0, 1903
test39: beq $20, $21, ctlin51
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test39
 ctlin51: ori $9, $0, 0x82dbda
        sw $9, 0($8)
        addi $8, $8, 4 
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin52: ori $9, $0, 0x62abd3
         addi $20, $0, 1956
         addi $21, $0, 1915
test40: beq $20, $21, ctlin53
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test40
ctlin53: ori $9, $0, 0xfbfffe
	addi $20, $0, 1961
        addi $21, $0, 1956
test41: beq $20, $21, ctlin54
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test41
ctlin54: ori $9, $0, 0x82dbda
	addi $20, $0, 1969
        addi $21, $0, 1961
test42: beq $20, $21, ctlin55
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test42
ctlin55: ori $9, $0, 0xfbfffe
	addi $20, $0, 1975
        addi $21, $0, 1969
test43: beq $20, $21, ctlin56
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test43
ctlin56: ori $9, $0, 0x82dbda
	addi $20, $0, 1981
        addi $21, $0, 1975
test44: beq $20, $21, ctlin57
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test44
ctlin57: ori $9, $0, 0xfbfffe
	addi $20, $0, 1987
        addi $21, $0, 1981
test45: beq $20, $21, ctlin58
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test45
ctlin58: ori $9, $0, 0x82dbda
	addi $20, $0, 1997
        addi $21, $0, 1987
test46: beq $20, $21, ctlin59
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test46
ctlin59: ori $9, $0, 0x62abd3
         addi $20, $0, 2020
         addi $21, $0, 1997
test47: beq $20, $21, ctlin60
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test47
ctlin60: ori $9, $0, 0x82dbda
	addi $20, $0, 2030
        addi $21, $0, 2020
test48: beq $20, $21, ctlin61
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test48
ctlin61: ori $9, $0, 0x62abd3
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin62: ori $9, $0, 0x82dbda
	addi $20, $0, 2044
        addi $21, $0, 2031
test49: beq $20, $21, ctlin63
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test49
ctlin63: ori $9, $0, 0x62abd3
	addi $20, $0, 2083
        addi $21, $0, 2044
test50: beq $20, $21, ctlin64
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test50
ctlin64: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin65: ori $9, $0, 0x82dbda
	addi $20, $0, 2101
        addi $21, $0, 2086
test51: beq $20, $21, ctlin66
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test51
ctlin66: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin67: ori $9, $0, 0x82dbda
	addi $20, $0, 2119
        addi $21, $0, 2104
test52: beq $20, $21, ctlin68
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test52
ctlin68: ori $9, $0, 0xfbfffe
	addi $20, $0, 2125
        addi $21, $0, 2119
test53: beq $20, $21, ctlin69
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test53
ctlin69: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin70: ori $9, $0, 0x62abd3 
	addi $20, $0, 2155
        addi $21, $0, 2127
test54: beq $20, $21, ctlin71
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test54
ctlin71: ori $9, $0, 0x82dbda
	addi $20, $0, 2183
        addi $21, $0, 2155
test55: beq $20, $21, ctlin72
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test55
ctlin72: ori $9, $0, 0x62abd3
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin73: ori $9, $0, 0x82dbda
	addi $20, $0, 2198
        addi $21, $0, 2187
test56: beq $20, $21, ctlin74
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test56
ctlin74: ori $9, $0, 0x62abd3
	addi $20, $0, 2209
        addi $21, $0, 2198
test57: beq $20, $21, ctlin75
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test57
ctlin75: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin76: ori $9, $0, 0x82dbda
	addi $20, $0, 2257
        addi $21, $0, 2212
test58: beq $20, $21, ctlin77
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test58
ctlin77: ori $9, $0, 0x62abd3
	addi $20, $0, 2282
        addi $21, $0, 2257
test59: beq $20, $21, ctlin78
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test59
ctlin78: ori $9, $0, 0x82dbda
	addi $20, $0, 2299
        addi $21, $0, 2282
test60: beq $20, $21, ctlin79
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test60
ctlin79: ori $9, $0, 0x62abd3
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin80: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin81: ori $9, $0, 0x62abd3
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin82: ori $9, $0, 0x82dbda
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
ctlin83: ori $9, $0, 0x62abd3
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin84: ori $9, $0, 0x82dbda
	addi $20, $0, 2334
        addi $21, $0, 2314
test61: beq $20, $21, ctlin85
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test61
ctlin85: ori $9, $0, 0xfbfffe
	addi $20, $0, 2341
        addi $21, $0, 2334
test62: beq $20, $21, ctlin86
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test62
ctlin86: ori $9, $0, 0x82dbda
	addi $20, $0, 2385
        addi $21, $0, 2341
test63: beq $20, $21, ctlin87
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test63
ctlin87: ori $9, $0, 0xfbfffe
	addi $20, $0, 2391
        addi $21, $0, 2385
test64: beq $20, $21, ctlin88
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test64
ctlin88: ori $9, $0, 0x62abd3
	addi $20, $0, 2407
        addi $21, $0, 2391
test65: beq $20, $21, ctlin89
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test65
ctlin89: ori $9, $0, 0x82dbda
	addi $20, $0, 2438
        addi $21, $0, 2407
test66: beq $20, $21, ctlin90
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test66 
ctlin90: ori $9, $0, 0x62abd3
	addi $20, $0, 2417
        addi $21, $0, 2407
test67: beq $20, $21, ctlin91
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test67
ctlin91: ori $9, $0, 0x82dbda
	addi $20, $0, 2431
        addi $21, $0, 2417
test68: beq $20, $21, ctlin92
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test68 
ctlin92: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin93: ori $9, $0, 0x82dbda
	addi $20, $0, 2483
        addi $21, $0, 2434
test69: beq $20, $21, ctlin94
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test69
ctlin94: ori $9, $0, 0xfbfffe
	addi $20, $0, 2494
        addi $21, $0, 2483
test70: beq $20, $21, ctlin95
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test70
ctlin95: ori $9, $0, 0x82dbda
	addi $20, $0, 2506
        addi $21, $0, 2494
test71: beq $20, $21, ctlin96
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test71
ctlin96: ori $9, $0, 0x62abd3
	addi $20, $0, 2535
        addi $21, $0, 2506
test72: beq $20, $21, ctlin97
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test72
ctlin97: ori $9, $0, 0x82dbda
	addi $20, $0, 2545
        addi $21, $0, 2535
test73: beq $20, $21, ctlin98
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test73
ctlin98: ori $9, $0, 0xfbfffe
	addi $20, $0, 2551
        addi $21, $0, 2545
test74: beq $20, $21, ctlin99
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test74
ctlin99: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4		
ctlin100: ori $9, $0, 0xfbfffe
	addi $20, $0, 2559
        addi $21, $0, 2553
test75: beq $20, $21, ctlin101
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test75
ctlin101: ori $9, $0, 0x82dbda
	addi $20, $0, 2620
        addi $21, $0, 2559
test76: beq $20, $21, ctlin102
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test76
ctlin102: ori $9, $0, 0xfbfffe
	addi $20, $0, 2628
        addi $21, $0, 2620
test77: beq $20, $21, ctlin103
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test77
ctlin103: ori $9, $0, 0x82dbda
	addi $20, $0, 2654
        addi $21, $0, 2628
test78: beq $20, $21, ctlin104
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test78
ctlin104: ori $9, $0, 0x62abd3
	addi $20, $0, 2662
        addi $21, $0, 2654
test79: beq $20, $21, ctlin105
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test79
ctlin105: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin106: ori $9, $0, 0x62abd3
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin107: ori $9, $0, 0x82dbda
	addi $20, $0, 2679
        addi $21, $0, 2667
test80: beq $20, $21, ctlin108
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test80
ctlin108: ori $9, $0, 0xfbfffe
 	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin109: ori $9, $0, 0x82dbda
	addi $20, $0, 2712
        addi $21, $0, 2690
test81: beq $20, $21, ctlin110
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test81
ctlin110: ori $9, $0, 0xfbfffe
	addi $20, $0, 2726
        addi $21, $0, 2712
test82: beq $20, $21, ctlin111
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test82
ctlin111: ori $9, $0, 0x82dbda
	addi $20, $0, 2744
        addi $21, $0, 2726
test83: beq $20, $21, ctlin112
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test83
ctlin112: ori $9, $0, 0x62abd3
	addi $20, $0, 2765
        addi $21, $0, 2744
test84: beq $20, $21, ctlin113
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test84
ctlin113: ori $9, $0, 0x82dbda
	addi $20, $0, 2804
        addi $21, $0, 2765
test85: beq $20, $21, ctlin114
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test85
ctlin114: ori $9, $0, 0x62abd3
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin115: ori $9, $0, 0x82dbda
	addi $20, $0, 2850
        addi $21, $0, 2808
test86: beq $20, $21, ctlin116
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test86
ctlin116: ori $9, $0, 0xfbfffe
	addi $20, $0, 2857
        addi $21, $0, 2850
test87: beq $20, $21, ctlin117
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test87
ctlin117: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
ctlin118: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
ctlin119: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
ctlin120: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
ctlin121: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
ctlin122: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin123: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin124: ori $9, $0, 0x62abd3
	addi $20, $0, 2898
        addi $21, $0, 2868
test88: beq $20, $21, ctlin125
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test88
ctlin125: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin126: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
ctlin127:ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
ctlin128: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin129: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4 
ctlin130: ori $9, $0, 0x82dbda
	addi $20, $0, 2947
        addi $21, $0, 2908
test89: beq $20, $21, ctlin131
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test89
ctlin131: ori $9, $0, 0x62abd3
	addi $20, $0, 2957
        addi $21, $0, 2947
test90: beq $20, $21, ctlin132
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test90
ctlin132: ori $9, $0, 0x82dbda
	addi $20, $0, 3023
        addi $21, $0, 2957
test91: beq $20, $21, ctlin133
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test91
ctlin133: ori $9, $0, 0xfbfffe
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
ctlin134: ori $9, $0, 0x82dbda
	addi $20, $0, 3034
        addi $21, $0, 3028
test92: beq $20, $21, ctlin135
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test92
ctlin135: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin136: ori $9, $0, 0x82dbda
	addi $20, $0, 3070
        addi $21, $0, 3038
test93: beq $20, $21, ctlin137
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test93
ctlin137: ori $9, $0, 0x62abd3
	addi $20, $0, 3080
        addi $21, $0, 3070
test94: beq $20, $21, ctlin138
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test94
ctlin138: ori $9, $0, 0x82dbda
	addi $20, $0, 3190
        addi $21, $0, 3080
test95: beq $20, $21, ctlin139
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test95
ctlin139: ori $9, $0, 0xfbfffe
	addi $20, $0, 3196
        addi $21, $0, 3190
test96: beq $20, $21, ctlin140
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test96
ctlin140: ori $9, $0, 0x82dbda
	addi $20, $0, 3256
        addi $21, $0, 3196
test97: beq $20, $21, ctlin141
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test97
ctlin141: ori $9, $0, 0xfbfffe
	addi $20, $0, 3266
        addi $21, $0, 3256
test98: beq $20, $21, ctlin142
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test98
ctlin142: ori $9, $0, 0x82dbda
	addi $20, $0, 3313
        addi $21, $0, 3266
test99: beq $20, $21, ctlin143
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test99 
ctlin143: ori $9, $0, 0xfbfffe
	addi $20, $0, 3327
        addi $21, $0, 3313
test100: beq $20, $21, ctlin144
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test100 	
ctlin144: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin145: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin146: ori $9, $0, 0x82dbda
	addi $20, $0, 3380
        addi $21, $0, 3334
test101: beq $20, $21, ctlin147
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test101 	
ctlin147: ori $9, $0, 0xfbfffe
	addi $20, $0, 3387
        addi $21, $0, 3380
test102: beq $20, $21, ctlin148
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test102
ctlin148: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin149: ori $9, $0, 0xfbfffe
	addi $20, $0, 3398
        addi $21, $0, 3391
test103: beq $20, $21, ctlin150
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test103
ctlin150: ori $9, $0, 0x82dbda
	addi $20, $0, 3438
        addi $21, $0, 3398
test104: beq $20, $21, ctlin151
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test104
ctlin151: ori $9, $0, 0xfbfffe
	addi $20, $0, 3445
        addi $21, $0, 3438
test105: beq $20, $21, ctlin152
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test105
ctlin152: ori $9, $0, 0x82dbda
	addi $20, $0, 3453
        addi $21, $0, 3445
test106: beq $20, $21, ctlin153
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test106
ctlin153: ori $9, $0, 0xfbfffe
	addi $20, $0, 3459
        addi $21, $0, 3453
test107: beq $20, $21, ctlin154
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test107
ctlin154: ori $9, $0, 0x82dbda
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin155: ori $9, $0, 0xfbfffe
	addi $20, $0, 3467
        addi $21, $0, 3461
test108: beq $20, $21, ctlin156
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test108
ctlin156: ori $9, $0, 0x82dbda 
	addi $20, $0, 3505
        addi $21, $0, 3467
test109: beq $20, $21, ctlin157
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test109
ctlin157: ori $9, $0, 0xfbfffe
	addi $20, $0, 3510
        addi $21, $0, 3505
test110: beq $20, $21, ctlin158
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test110
ctlin158: ori $9, $0, 0x82dbda
	addi $20, $0, 3518
        addi $21, $0, 3510
test111: beq $20, $21, ctlin159
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test111 
ctlin159: ori $9, $0, 0xfbfffe
	addi $20, $0, 3530
        addi $21, $0, 3518
test112: beq $20, $21, ctlin160
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test112 
ctlin160: ori $9, $0, 0x82dbda
	addi $20, $0, 4321
        addi $21, $0, 3530
test113: beq $20, $21, ctlin161
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test113
ctlin161: ori $9, $0, 0x0a6f98
	addi $20, $0, 4577
        addi $21, $0, 4321
test114: beq $20, $21, ctlin162
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test114
ctlin162: ori $9, $0, 0x0f99c9
	addi $20, $0, 4833
        addi $21, $0, 4577
test115: beq $20, $21, ctlin163
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test115
ctlin163: ori $9, $0, 0x31c3da
	addi $20, $0, 4840
        addi $21, $0, 4833
test116: beq $20, $21, ctlin164
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test116 
ctlin164: ori $9, $0, 0x0f99c9
	addi $20, $0, 4846
        addi $21, $0, 4840
test117: beq $20, $21, ctlin165
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test117 
ctlin165: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4 
ctlin166: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4 
ctlin167: ori $9, $0, 0x31c3da
	addi $20, $0, 4857
        addi $21, $0, 4851
test118: beq $20, $21, ctlin168
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test118 
ctlin168: ori $9, $0, 0x0f99c9
	addi $20, $0, 4863
        addi $21, $0, 4857
test119: beq $20, $21, ctlin169
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test119  
ctlin169: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin170: ori $9, $0, 0x0f99c9
	addi $20, $0, 4874
        addi $21, $0, 4867
test120: beq $20, $21, ctlin171
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test120   
ctlin171: ori $9, $0, 0x31c3da
	addi $20, $0, 4894
        addi $21, $0, 4874
test121: beq $20, $21, ctlin172
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test121   
ctlin172: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin173: ori $9, $0, 0x31c3da
	addi $20, $0, 4910
        addi $21, $0, 4898
test122: beq $20, $21, ctlin174
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test122   
ctlin174: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
	addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin175: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin176: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
	addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin177: ori $9, $0, 0x31c3da
	addi $20, $0, 4933
        addi $21, $0, 4921
test123: beq $20, $21, ctlin178
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test123 
ctlin178: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
	addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin179: ori $9, $0, 0x31c3da
	sw $9, 0($8)
	addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin180: ori $9, $0, 0x0f99c9
	addi $20, $0, 4956
        addi $21, $0, 4940
test124: beq $20, $21, ctlin181
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test124 
ctlin181: ori $9, $0, 0x31c3da
	addi $20, $0, 4965
        addi $21, $0, 4956
test125: beq $20, $21, ctlin182
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test125  
ctlin182: ori $9, $0, 0x0f99c9
	addi $20, $0, 4972
        addi $21, $0, 4965
test126: beq $20, $21, ctlin183
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test126 
ctlin183: ori $9, $0, 0x31c3da
	addi $20, $0, 4979
        addi $21, $0, 4972
test127: beq $20, $21, ctlin184
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test127 
ctlin184: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin185: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin186: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin187: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin188: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin189: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4  
ctlin190: ori $9, $0, 0x0f99c9
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
ctlin191: ori $9, $0, 0x31c3da
	addi $20, $0, 5018
        addi $21, $0, 5003
test128: beq $20, $21, ctlin192
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test128
ctlin192: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin193: ori $9, $0, 0x31c3da
	addi $20, $0, 5033
        addi $21, $0, 5022
test129: beq $20, $21, ctlin194
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test129
ctlin194: ori $9, $0, 0x0f99c9
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
ctlin195: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin196: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin197: ori $9, $0, 0x31c3da
	addi $20, $0, 5057
        addi $21, $0, 5045
test130: beq $20, $21, ctlin198
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test130
ctlin198: ori $9, $0, 0x0f99c9
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
ctlin199: ori $9, $0, 0x31c3da
	addi $20, $0, 5074
        addi $21, $0, 5062
test131: beq $20, $21, ctlin200
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test131
ctlin200: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin201: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin202: ori $9, $0, 0x0f99c9
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin203: ori $9, $0, 0x31c3da
	addi $20, $0, 5596
        addi $21, $0, 5085
test132: beq $20, $21, ctlin204
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test132
ctlin204: ori $9, $0, 0xaad770 #verde claro
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
ctlin205: ori $9, $0, 0x31c3da
	addi $20, $0, 5720
        addi $21, $0, 5601
test133: beq $20, $21, ctlin206
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test133
ctlin206: ori $9, $0, 0xaad770
	addi $20, $0, 5727
        addi $21, $0, 5720
test134: beq $20, $21, ctlin207
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test134
ctlin207: ori $9, $0, 0x45632f #verde escuro
	 sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin208: ori $9, $0, 0x7b7b7b #cinza claro
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin209: ori $9, $0, 0x31c3da
	addi $20, $0, 5845
        addi $21, $0, 5733
test135: beq $20, $21, ctlin210
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test135
ctlin210: ori $9, $0, 0xaad770
	addi $20, $0, 5852
        addi $21, $0, 5845
test136: beq $20, $21, ctlin211
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test136
ctlin211: ori $9, $0, 0x45632f
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
ctlin212: ori $9, $0, 0x444442 #cinza escuro
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin213: ori $9, $0, 0x7b7b7b
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
ctlin214: ori $9, $0, 0x5bdfe1 #ultimo azul
	addi $20, $0, 5878
        addi $21, $0, 5864
test137: beq $20, $21, ctlin215
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test137
ctlin215: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4	
ctlin216: ori $9, $0, 0x5bdfe1
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
ctlin217: ori $9, $0, 0x31c3da
	addi $20, $0, 5896
        addi $21, $0, 5887
test138: beq $20, $21, ctlin218
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test138
ctlin218: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin219: ori $9, $0, 0x31c3da
	addi $20, $0, 5912
        addi $21, $0, 5900
test139: beq $20, $21, ctlin220
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test139
ctlin220: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin221: ori $9, $0, 0x31c3da
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
ctlin222: ori $9, $0, 0x5bdfe1
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
ctlin223: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin224: ori $9, $0, 0x5bdfe1
	addi $20, $0, 5940
        addi $21, $0, 5928
test140: beq $20, $21, ctlin225
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test140
ctlin225: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin226: ori $9, $0, 0x5bdfe1
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
ctlin227: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin228: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin229: ori $9, $0, 0x31c3da
	addi $20, $0, 5960
        addi $21, $0, 5953
test141: beq $20, $21, ctlin230
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test141
ctlin230: ori $9, $0, 0x5bdfe1
	addi $20, $0, 5972
        addi $21, $0, 5960
test142: beq $20, $21, ctlin231
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test142
ctlin231: ori $9, $0, 0xaad770
	addi $20, $0, 5979
        addi $21, $0, 5972
test143: beq $20, $21, ctlin232
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test143
ctlin232: ori $9, $0, 0x45632f
	addi $20, $0, 5985
        addi $21, $0, 5979
test144: beq $20, $21, ctlin233
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test144
ctlin233: ori $9, $0, 0x444442
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin234: ori $9, $0, 0x7b7b7b
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin235: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6003
        addi $21, $0, 5993
test145: beq $20, $21, ctlin236
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test145
ctlin236: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin237: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin238: ori $9, $0, 0x31c3da
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin240: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6025
        addi $21, $0, 6013
test146: beq $20, $21, ctlin241
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test146
ctlin241: ori $9, $0, 0x31c3da
	addi $20, $0, 6042
        addi $21, $0, 6025
test147: beq $20, $21, ctlin242
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test147
ctlin242: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6048
        addi $21, $0, 6042
test148: beq $20, $21, ctlin243
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test148
ctlin243: ori $9, $0, 0x31c3da
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
ctlin245: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6063
        addi $21, $0, 6053
test149: beq $20, $21, ctlin246
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test149
ctlin246: ori $9, $0, 0x31c3da
	addi $20, $0, 6076
        addi $21, $0, 6063
test150: beq $20, $21, ctlin247
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test150
ctlin247: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin248: ori $9, $0, 0x31c3da
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
ctlin249: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin250: ori $9, $0, 0x31c3da
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
ctlin251: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin252: ori $9, $0, 0xaad770
	addi $20, $0, 6103
        addi $21, $0, 6096
test151: beq $20, $21, ctlin253
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test151
ctlin253: ori $9, $0, 0x45632f
	addi $20, $0, 6110
        addi $21, $0, 6103
test152: beq $20, $21, ctlin254
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test152
ctlin254: ori $9, $0, 0x444442
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
ctlin255: ori $9, $0, 0x7b7b7b
	addi $20, $0, 6125
        addi $21, $0, 6115
test153: beq $20, $21, ctlin256
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test153
ctlin256: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6223
        addi $21, $0, 6125
test154: beq $20, $21, ctlin257
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test154
ctlin257: ori $9, $0, 0xaad770
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
ctlin258: ori $9, $0, 0x45632f
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
ctlin259: ori $9, $0, 0x7b7b7b
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin260: ori $9, $0, 0x444442
	addi $20, $0, 6247
        addi $21, $0, 6237
test155: beq $20, $21, ctlin261
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test155
ctlin261: ori $9, $0, 0x7b7b7b
	addi $20, $0, 6254
        addi $21, $0, 6247
test156: beq $20, $21, ctlin262
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test156
ctlin262: ori $9, $0, 0x5bdfe1 #ultimo azul
	addi $20, $0, 6260
        addi $21, $0, 6254
test157: beq $20, $21, ctlin263
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test157
ctlin263: ori $9, $0, 0xfbfffe #branco
	addi $20, $0, 6266
        addi $21, $0, 6260
test158: beq $20, $21, ctlin264
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test158    
ctlin264: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6296
        addi $21, $0, 6266
test159: beq $20, $21, ctlin265
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test159 
ctlin265: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin266: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin267: ori $9, $0, 0xfbfffe
	addi $20, $0, 6306
        addi $21, $0, 6300
test160: beq $20, $21, ctlin268
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test160
ctlin268:ori $9, $0, 0x5bdfe1
	addi $20, $0, 6340
        addi $21, $0, 6306
test161: beq $20, $21, ctlin269
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test161
ctlin269: ori $9, $0, 0xfbfffe
	addi $20, $0, 6346
        addi $21, $0, 6340
test162: beq $20, $21, ctlin270
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test162
ctlin270: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6351
        addi $21, $0, 6346
test163: beq $20, $21, ctlin271
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test163
ctlin271: ori $9, $0, 0xaad770 #verde claro
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin272: ori $9, $0, 0x45632f #verde escuro
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin273: ori $9, $0, 0x7b7b7b
	addi $20, $0, 6366
        addi $21, $0, 6356
test164: beq $20, $21, ctlin274
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test164
ctlin274: ori $9, $0, 0x444442
	addi $20, $0, 6376
        addi $21, $0, 6366
test165: beq $20, $21, ctlin275
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test165
ctlin275: ori $9, $0, 0x7b7b7b
	addi $20, $0, 6372
        addi $21, $0, 6366
test166: beq $20, $21, ctlin276
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test166
ctlin276: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin277: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4 
ctlin278: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6384
        addi $21, $0, 6378
test167: beq $20, $21, ctlin279
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test167
ctlin279: ori $9, $0, 0xfbfffe 
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin280: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin281: ori $9, $0, 0xfbfffe
 	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin282: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6401
        addi $21, $0, 6391
test168: beq $20, $21, ctlin283
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test168
ctlin283: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin284: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6416
        addi $21, $0, 6403
test169: beq $20, $21, ctlin285
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test169
ctlin285: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin286: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin287: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin288: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6442
        addi $21, $0, 6428
test170: beq $20, $21, ctlin289
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test170
ctlin289: ori $9, $0, 0xfbfffe
 	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin290: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6453
        addi $21, $0, 6445
test171: beq $20, $21, ctlin291
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test171
ctlin291: ori $9, $0, 0xfbfffe
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
ctlin292: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6469
        addi $21, $0, 6458
test172: beq $20, $21, ctlin293
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test172
ctlin293: ori $9, $0, 0xaad770 
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin294: ori $9, $0, 0x45632f 
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin295: ori $9, $0, 0x7b7b7b
	addi $20, $0, 6481
        addi $21, $0, 6473
test173: beq $20, $21, ctlin296
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test173
ctlin296: ori $9, $0, 0x444442
	addi $20, $0, 6494
        addi $21, $0, 6481
test174: beq $20, $21, ctlin297
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test174
ctlin297: ori $9, $0, 0x7b7b7b
	addi $20, $0, 6501
        addi $21, $0, 6494
test175: beq $20, $21, ctlin298
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test175
ctlin298: ori $9, $0, 0xf2d06c #areia molhada
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
ctlin299: ori $9, $0, 0xfbfffe
 	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin300: ori $9, $0, 0xf2d06c
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
ctlin301: ori $9, $0, 0xfbfffe
 	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin302: ori $9, $0, 0x5bdfe1 
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin303: ori $9, $0, 0xfbfffe
	addi $20, $0, 6527
        addi $21, $0, 6517
test176: beq $20, $21, ctlin304
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test176
ctlin304: ori $9, $0, 0x5bdfe1 
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin305: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin306: ori $9, $0, 0x5bdfe1
	addi $20, $0, 6546
        addi $21, $0, 6533
test177: beq $20, $21, ctlin307
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test177
ctlin307: ori $9, $0, 0xfbfffe
	addi $20, $0, 6566
        addi $21, $0, 6546
test178: beq $20, $21, ctlin308
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test178
ctlin308: ori $9, $0, 0x5bdfe1
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
ctlin309: ori $9, $0, 0xfbfffe
	addi $20, $0, 6579
        addi $21, $0, 6571
test179: beq $20, $21, ctlin310
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test179
ctlin310: ori $9, $0, 0xf2d06c
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
ctlin311: ori $9, $0, 0xfbfffe
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
ctlin312: ori $9, $0, 0xf2d06c
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
ctlin313: ori $9, $0, 0xaad770
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin314: ori $9, $0, 0x45632f
	sw $9, 0($8)
        addi $8, $8, 4
ctlin315: ori $9, $0, 0x7b7b7b
	addi $20, $0, 6605
        addi $21, $0, 6597
test180: beq $20, $21, ctlin316
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test180
ctlin316: ori $9, $0, 0x444442
	addi $20, $0, 6622
        addi $21, $0, 6605
test181: beq $20, $21, ctlin317
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test181
ctlin317: ori $9, $0, 0x7b7b7b
	addi $20, $0, 6628
        addi $21, $0, 6622
test182: beq $20, $21, ctlin318
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test182 
ctlin318: ori $9, $0, 0xf2d06c
	addi $20, $0, 6643
        addi $21, $0, 6628
test183: beq $20, $21, ctlin319
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test183 
ctlin319: ori $9, $0, 0xfbfffe
	addi $20, $0, 6653
        addi $21, $0, 6643
test184: beq $20, $21, ctlin320
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test184 
ctlin320: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin321: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin322: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin323: ori $9, $0, 0xfbfffe
	addi $20, $0, 6674
        addi $21, $0, 6659
test185: beq $20, $21, ctlin324
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test185 
ctlin324: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin325: ori $9, $0, 0xfbfffe
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin326: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin327: ori $9, $0, 0xfbfffe
	addi $20, $0, 6692
        addi $21, $0, 6682
test186: beq $20, $21, ctlin328
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test186 
ctlin328: ori $9, $0, 0x5bdfe1
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin329: ori $9, $0, 0xfbfffe
	addi $20, $0, 6704
        addi $21, $0, 6694
test187: beq $20, $21, ctlin330
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test187
ctlin330: ori $9, $0, 0xf2d06c
	addi $20, $0, 6722
        addi $21, $0, 6704
test188: beq $20, $21, ctlin331
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test188
ctlin331: ori $9, $0, 0x45632f
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin332: ori $9, $0, 0x7b7b7b
	addi $20, $0, 6732
        addi $21, $0, 6724
test189: beq $20, $21, ctlin333
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test189
ctlin333: ori $9, $0, 0x444442
	addi $20, $0, 6757
        addi $21, $0, 6732
test190: beq $20, $21, ctlin334
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test190
ctlin334: ori $9, $0, 0xfce7b0 #areia seca
	addi $20, $0, 6767
        addi $21, $0, 6757
test191: beq $20, $21, ctlin335
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test191 
ctlin335: ori $9, $0, 0xf2d06c
	addi $20, $0, 6781
        addi $21, $0, 6767
test192: beq $20, $21, ctlin336
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test192
ctlin336: ori $9, $0, 0xfbfffe
	addi $20, $0, 6795
        addi $21, $0, 6781
test193: beq $20, $21, ctlin337
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test193
ctlin337: ori $9, $0, 0xf2d06c
	addi $20, $0, 6802
        addi $21, $0, 6795
test194: beq $20, $21, ctlin338
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test194
ctlin338: ori $9, $0, 0xfbfffe
	addi $20, $0, 6817
        addi $21, $0, 6802
test195: beq $20, $21, ctlin339
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test195
ctlin339: ori $9, $0, 0xf2d06c
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin340:ori $9, $0, 0xfbfffe
	addi $20, $0, 6829
        addi $21, $0, 6820
test196: beq $20, $21, ctlin341
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test196
ctlin341: ori $9, $0, 0xf2d06c
	addi $20, $0, 6836
        addi $21, $0, 6829
test197: beq $20, $21, ctlin342
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test197
ctlin342: ori $9, $0, 0xfce7b0
	addi $20, $0, 6849
        addi $21, $0, 6836
test198: beq $20, $21, ctlin343
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test198
ctlin343: ori $9, $0, 0x444442
	addi $20, $0, 6869
        addi $21, $0, 6849
test199: beq $20, $21, ctlin344
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test199	
ctlin344: ori $9, $0, 0xfce7b0
	addi $20, $0, 6898
        addi $21, $0, 6869
test200: beq $20, $21, ctlin345
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test200	
ctlin345: ori $9, $0, 0xf2d06c
	addi $20, $0, 6961
        addi $21, $0, 6898
test201: beq $20, $21, ctlin346
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test201
ctlin346: ori $9, $0, 0xfce7b0
	addi $20, $0, 6937
        addi $21, $0, 6861
test202: beq $20, $21, ctlin347
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test202
ctlin347: ori $9, $0, 0xf2d06c
	addi $20, $0, 6949
        addi $21, $0, 6937
test203: beq $20, $21, ctlin348
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test203
ctlin348: ori $9, $0, 0xfce7b0
	addi $20, $0, 6960
        addi $21, $0, 6949
test204: beq $20, $21, ctlin349
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test204
ctlin349: ori $9, $0, 0xf2d06c
	addi $20, $0, 6975
        addi $21, $0, 6960
test205: beq $20, $21, ctlin350
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test205
ctlin350: ori $9, $0, 0xfce7b0
	sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
        sw $9, 0($8)
        addi $8, $8, 4
ctlin351: ori $9, $0, 0xf2d06c
	addi $20, $0, 6986
        addi $21, $0, 6978
test206: beq $20, $21, ctlin352
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test206
ctlin352: ori $9, $0, 0xfce7b0
	addi $20, $0, 8049
        addi $21, $0, 6986
test207: beq $20, $21, fiml
        sw $9, 0($8)
        addi $8, $8, 4
        addi $20, $20, -1
        j test207   
fiml:   addi $2, $0, 10
        syscall