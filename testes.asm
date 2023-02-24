.data

msg: .asciiz "Digite os valores dos lados 1, 2, 3"

.text

 li $t0, 4
 la $s0, msg
 
 syscall