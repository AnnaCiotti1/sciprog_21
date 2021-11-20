!Module with the recursive function to generate the greatest common divisor between two integer numbers
module functions

contains

!Recursive function to generate the greatest common divisor between two integer numbers a and b
recursive function greatest_common_divisor(a,b) result(divisor)
   implicit none
   integer(kind=4) :: a, b, divisor
   if (b .eq. 0) then
      divisor = a
   else
      divisor = greatest_common_divisor(b, mod(a, b))
   endif
   return
end function greatest_common_divisor

end module functions

!Main code block
program recursive

!Import of the module with the recursive function for the greatest common denominator
use functions

!Declaration of variables
implicit none
integer(kind=4) :: a, b, gcd

!Initialization of a and b as two integer numbers input from the user
write(6,*) 'Enter two integers a and b, with a non-zero'
read(5,*) a, b

!Calculation of the greatest common divisor between a and b with the recursive function contained in the module
gcd = greatest_common_divisor(a, b)

!Writin of the greatest common divisor to the screen
write(6,*) 'The greatest common divisor between', a, ' and ', b, ' is ', gcd

end program recursive
