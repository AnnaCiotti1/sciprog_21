!Module containing the iterative function for the greatest common denominator of two numbers
module iterative_function

contains

!Function to determine the greatest common denominator of two numbers
   function greatest_common_denominator(a,b) result(c)
      integer(kind=4) :: a, b, c, i
      do i=1,b
         if (mod(b,i) .eq. 0 .and. mod(a,i) .eq. 0) then
            c = i
         endif
      enddo
   end function greatest_common_denominator
end module iterative_function

!Main code block
program iterative_function_example

!Import of the module for the greatest common denominator of two numbers

   use iterative_function

!Declaration of variables
   integer(kind=4) :: int1, int2, gcd

!Initialization of variables, the numbers are taken as input from the user
write (6,*) 'Enter two integers'
read (5,*) int1, int2

!Calculation of the greatest common denominator
gcd = greatest_common_denominator(int1,int2)

!Printing to the screen of the greatest common denominator
write(6,*) 'The common denominator between', int1, 'and', int2, 'is', gcd

end program iterative_function_example
