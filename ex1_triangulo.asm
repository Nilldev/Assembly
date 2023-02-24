.data
msg1: .asciiz " digite o valor do lado 1: "
msg2: .asciiz "digite o valo do lado 2: "
msg3: .asciiz "digite o valor do lado 3: "
msg4: .asciiz " O triangulo e': "


.text

   li $v0, 4 #imprime a mensagem
   la $a0, msg1
   syscall
    
   li $f0, 6
   la $f12, 2
   syscall
    
    
   
    