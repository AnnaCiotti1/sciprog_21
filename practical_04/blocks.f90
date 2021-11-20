program blocks

!Declaration of variables
implicit none
integer(kind=4)::N, i
real(kind=4):: a, b, pi, angledeg, anglerad, arad, brad, area_under_tan
real::tangents(13)

!Initialization of variables
a = 0
pi = 3.14159
b = 60
N = 12

!Every angle between a and b is expressed in degrees as angledeg=(i-1)*b/N, so that a=X1=0, x2=5, x3=10...
!Then, it is converted in radians and its tangent is stored in the array at position i,
!so tangents(1)=tan(0), tangents(2)=tan(5), tangents(3)=tan(10), and so on.
do i = 1, N+1
  angledeg = (i-1)*b/N
  call conversion_to_radians(angledeg, anglerad)
  tangents(i) = tan(anglerad)
end do

print *, 'The tangents of the angles from 0 to 60 deg, with the angle varying of 5 deg, are ', tangents

!Calculation of the area comprised between a and b
call conversion_to_radians(a, arad)
call conversion_to_radians(b, brad)
call area(arad, brad, N, area_under_tan)
print *, 'The area under the tangents is ', area_under_tan

end program blocks

!Subroutine to convert degrees in radians
subroutine conversion_to_radians(a,b)
  implicit none
  real(kind=4), intent(in) :: a
  real(kind=4), intent(out) :: b
  real(kind=4) :: pi = 3.14159
  b = a*pi/180.0
end subroutine conversion_to_radians

!Subroutine to calculate the area under the curve of tan(x), employing the trapezoidal rule
subroutine area(a, b, c, d)
   implicit none
   integer(kind=4) :: i
   integer(kind=4), intent(in) :: c
   real(kind=4), intent(in) :: a,b
   real(kind=4), intent(out) :: d
   real(kind=4) :: x
   do i = 1, c-1
      x = a + b*i/c
      d = d+2*tan(x)
   end do
   d = d+tan(a)+tan(b)
   d = d*(b-a)/(2*c)
end subroutine area
