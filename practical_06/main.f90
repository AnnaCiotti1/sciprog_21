!Module for matrix multiplication
module matrix_mult

interface

!Function for matrix multiplication, takes as input the names of the matrices and their dimensions and outputs the product
function mult(a,ai,aj, b,bi, bj) result (c)
   implicit none
   integer(kind=4) :: i,j,k
   integer(kind=4) :: ai, aj, bi, bj
   real(kind=8) :: a(ai,aj), b(bi,bj)
   real(kind=8) :: c(ai, bj)
end function mult

end interface

end module matrix_mult

!Main code block
program matmult

!Import of the module for matrix multiplication
use matrix_mult

!Declaration of variables
implicit none
integer(kind=4), parameter :: n=5, p=3, q=4
integer(kind=4) :: i, j
real(kind=8) :: A(n,p),B(p,q),C(n,q)

!Initialization of matrices
do i = 1,n
   do j = 1,p
      A(i,j) = i+j
   end do
end do

do i = 1,p
   do j = 1,q
      B(i,j) = i-j
   end do
end do

do i = 1,n
   do j = 1,q
      C(i,j) = 0
   end do
end do

!Multiplication of A and B to obtain C
C = mult(A,n,p, B,p,q)

!Printing of matrices
write (6,'(/,a,/,/)') 'This is matrix A'
do i = 1,n
   do j = 1,p
      write(6,'(f3.0)', advance = 'no') A(i,j)
   end do
   write (6,*)
end do

write (6,'(/,a,/,/)') 'This is matrix B'
do i = 1,p
   do j = 1,q
      write(6,'(f3.0)', advance = 'no') B(i,j)
   end do
   write (6,*)
end do

write (6,'(/,a,/,/)') 'This is matrix C'
do i = 1,n
   do j = 1,q
      write(6,'(f5.0)', advance = 'no') C(i,j)
   end do
   write (6,*)
end do
end program matmult
