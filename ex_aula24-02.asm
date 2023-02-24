.data

entrada: .asciiz " Digite o lado: "
saida: .asciiz " O valor do perimetro e': "


.text
  
  li $v0, 4
  la $a0, entrada
  syscall
  
  li $v0, 5
  syscall
  
  move $t1, $v0
   mul $t2, $t1, 4
   
   
   li $v0, 4
   la $a0, saida
   syscall
   
   li $v0, 1
   la $a0, ($t2)
   syscall
   
   li $v0, 10
   syscall
   
  