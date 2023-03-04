 # printar string
.macro prtstr(%str)

  .data
    msg:  .asciiz %str
  .text
    li $v0,4
    la $a0, msg
    syscall
.end_macro    

#imprime inteiro
.macro prtInt(%int)

 li $v0, 1
 la $a0, (%int)
 syscall 
.end_macro 

#ler inteiro e aloca em T1
.macro inputint(%int)

li $v0, 5
syscall
move %int, $v0
.end_macro

.text

prtstr ("\nSeja bem vindo à financeira NK\n\n\n")
prtstr  ("Digite a sua idade: ")
inputint($t0)

bge $t0, 18, aprovId
j idadeMenor

aprovId:
prtstr ("\nDigite o valor doseu salário: ")
inputint ($t0)
prtstr ("\nDigite o valor do empréstimo: ")
inputint ($t0)
prtstr ("\nDigite a quantidade de parcelas: ")
inputint($t0)
j calcEmpre




calcEmpre:
ble $t2, 5000, calc3
ble $t2, 50000,calc2
#bgt $t2, 50000, calc1
j calc3


calc3:
div $t4,$t2,$t3
mul $t5,$t4, 103
div $t6, $t5, 100
prtInt($t6)
j calc2

calc2:
div $t7, $t2,$t3
mul $s0, $t7, 102
div $s1, $s0, 100
prtInt($s1)




idadeMenor:
prtstr ("\n\nSua idade  não foi aprovada!")
li $v0, 10
syscall









