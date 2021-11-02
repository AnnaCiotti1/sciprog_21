!Function for matrix multiplication, takes as input the names of the matrices and their dimensions and outputs the product
function mult(a,ai,aj, b,bi, bj) result (c)
   implicit none
   integer(kind=4) :: i,j,k
   integer(kind=4) :: ai, aj, bi, bj
   real(kind=8) :: a(ai,aj), b(bi,bj)
   real(kind=8) :: c(ai, bj)
   do i = 1, ai
      do j = 1, bj
         do k = 1, aj
         c(i,j) = c(i,j) + a(i,k)*b(k,j)
         end do
      end do
   end do
   return
end function mult
