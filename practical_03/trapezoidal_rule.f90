program trapezoidal_rule

!Delcaration of variables
implicit none
real (kind=4) :: sum_tan, x, a, increment, b, diff, partial_sum
integer (kind=4) :: i

!Initialization of variables
a = 0.0
b = 3.1415927/3
increment = b/12
sum_tan = tan(a) + tan(b)
diff = 0.0
partial_sum = 0.0

!Generation of 11 x-points between a and b and sum of 2*tan(x) of the 11 points between a and b
do i = 1, 11
   x = a + increment*i
   partial_sum = partial_sum + 2*tan(x)
end do

!Addition of partial_sum to sum_tan and multiplication by (b-a)/2*N
sum_tan = (b-a)/24*(sum_tan+partial_sum)
write (6,*) sum_tan

!Comparison with log(2)
diff = sum_tan - log(2.0)
write (6,*) diff

end program trapezoidal_rule
