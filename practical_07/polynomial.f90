!Module with the subroutine for the polynomial generation
module subroutines

contains

!Subroutine for the generation of the powers of x that contribute to the polynomial expression f(x)
subroutine polynomial_generation(x, order, poly_array)
   implicit none
   integer(kind=4), intent(in) :: order
   real(kind=8), intent(in) :: x
   real(kind=8), intent(out) :: poly_array
   integer(kind=4) :: i, fact
   poly_array = 0
   fact = order-1
   do i = 1, order-2
      fact = fact*i
      fact = fact*i
   end do
   poly_array = x**(order-1)/fact
end subroutine polynomial_generation

end module subroutines

!Main code block
program polynomial

!Import of the module
use subroutines

!Declaration of variables
implicit none
integer(kind=4) :: i, j, order
real(kind=8) :: x, poly, e, partial_poly
real(kind=8), allocatable, dimension(:) :: poly_array

!Initialization of variables
x = 1
poly = 0
e = exp(1.0)
write(6,*) 'Enter the desired order of the polynomial'
read(5,*) order

!Allocation of memory for the array poly_array
allocate(poly_array(order))

!Initialization of the first term of the array that does not contain x
poly_array(1) = 1

!Evaluation of the powers of x up to the chosen order, and storage of the values in the array
do i = 2, order
   call polynomial_generation(x, i, poly_array(i))
end do

!Calculation of the total value of the polynomial through the sum of the terms in the array
do i = 1, order
   poly = poly + poly_array(i)
end do

!Output of the array and of the sum to the screen
write(6,*) 'The series of terms that contribute to the polynomial expansion of x=1 of order ', order, ' is ', poly_array
write(6,*) 'The difference between the total value of the polynomial expansion of x=1 of order ', order, ' and e is ', e-poly
write(6,*)

!Deallocation of memory of the array poly_array
deallocate(poly_array)

!COMPARISON BETWEEN THE POLYNOMIAL VALUES FROM ORDER 1 TO ORDER 15

poly = 1
write(6,*) 'The difference between the total value of the polynomial expansion of x=1 of order 1 and e is ', e-poly
write(6,*)

do i = 2, 15
   poly = 1
   do j = 2, i
      call polynomial_generation(x, j, partial_poly)
      poly = poly + partial_poly
   end do
   write(6,*) 'The difference between the total value of the polynomial expansion of x=1 of order ', i, ' and e is ', e-poly
   write(6,*)
end do

!As the number of terms in the sum becomes larger, the accuracy is predicted to be better.
!However, this is not verified because, starting from order 11, the value of the
!polynomial becomes larger than the value of e, which makes the estimation
!progressively worse, since the result strays from the real value. This is
!indicated by the fact that the difference becomes negative.

end program polynomial
