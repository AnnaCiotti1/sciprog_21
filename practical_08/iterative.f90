!Module containing the iterative function for the greatest common divisor of two numbers
module iterative_function

contains

!Function to determine the greatest common divisor of two numbers
function greatest_common_divisor(a,b) result(c)
   implicit none
   integer(kind=4) :: a, b, c, i
   do i=1,b
      if (mod(b,i) .eq. 0 .and. mod(a,i) .eq. 0) then
         c = i
      endif
   enddo
end function greatest_common_divisor

end module iterative_function

!Main code block
program iterative_function_example

!Import of the module for the greatest common denominator of two numbers

use iterative_function

!Declaration of variables
implicit none
integer(kind=4) :: int1, int2, gcd

!Initialization of variables, the numbers are taken as input from the user
write (6,*) 'Enter two integers'
read (5,*) int1, int2

!Calculation of the greatest common divisor
gcd = greatest_common_divisor(int1,int2)

!Printing to the screen of the greatest common divisor
write(6,*) 'The common divisor between', int1, 'and', int2, 'is', gcd

end program iterative_function_example
