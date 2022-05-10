# Chuong trinh cong tru nhan chia
# doxuansang
.data # khai báo du lieu
 str: .asciiz "Input"
 
.text # chay chuong trinh
 # Nhap tu ban phim a = s0
 li $v0, 5
 syscall
 move $s0, $v0
 # Nhap tu ban phim b = s1
 li $v0, 5
 syscall
 move $s1, $v0
 # a+b = s2
 add $s2, $s0, $s1
 # a-b = s3
 sub $s3, $s0, $s1
 # a*b = s4
 mult $s0, $s1
 mflo $s4
 mfhi $s7
 # a/b = s5
 div $s0, $s1
 mflo $s5
 # a%b = s6
 mfhi $s6
 # ket qua phep chia hoac nhan duoc luu trong 2 bien tam lo, hi
 # ta can chuyen ket qua ve o nho mong muon
 .globl main
main:
 
 
