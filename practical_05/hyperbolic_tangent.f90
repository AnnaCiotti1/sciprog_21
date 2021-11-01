!Creation of a module with the functions
module tangents

contains

   !Creation of the function to calculate the hyperbolic tangent using the MacLaurin series
   function mac_laurin(a, b) result(c)
      real(kind=4) :: a, b, c
      integer(kind=4) :: n
      n = 0
      c = 0
      do while (abs(a**(2*n+1)/(2*n+1)) .ge. b)
          c = c + a**(2*n+1)/(2*n+1)
          n = n+1
      end do
      return
   end function mac_laurin

   !Creation of the function to calculate the hyperbolic tangent using the logarithmic form
   function logarithm(a) result(b)
      real(kind=4) :: a, b
      b = 0.5*(log(1+a)-log(1-a))
      return
   end function logarithm

end module tangents

!Main code block
program hyperbolic_tangent

!Import of the tangents module
use tangents

!Declaration of the variables. The arrays length is equal to the number of values of x for which the hyperbolic arctan will be calculated.
implicit none
real(kind=4) :: delta, x
integer(kind=4) :: i
real(kind=4) :: array_mac(18), array_log(18)

!Attribution of delta to a positive real number smaller than one chosen by the user
write(6,*) 'Enter a positive number smaller than 1'
read(5,*) delta

!Initialization of the variables
x = -0.9

!Calculation of the MacLaurin and logarithmic value of the tangent using the corresponding function for each x, and storage of the results in array_mac and array_log
do i = 1, 18
   array_mac(i) = mac_laurin(x, delta)
   array_log(i) = logarithm(x)
   x = x + 0.1
end do

print *, 'The MacLaurin results for x comprised between -0.9 and 0.9, with a variation of 0.01, are ', array_mac

print *, 'The logarithmic results for x comprised between -0.9 and 0.9, with a variation of 0.01, are ', array_log

end program hyperbolic_tangent