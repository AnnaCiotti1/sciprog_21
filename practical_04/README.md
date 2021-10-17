The program must be compiled as

gfortran -o blocks blocks.f90

and run as ./blocks.

It calculates the tangent of thirteen angles, expressed in radians, ranging from 0 to 60 degrees. The conversion from degrees to radians is operated by the subroutine conversion_to_radians(a,b), which takes the value of the angle in degrees as input value (a), and furnishes the value in radians as output value(b). The tangents are printed.

Subsequently, the values of the angles at the extremes of the interval, 0 and 60, are converted to radians using the conversion_to_radians subroutine, and the subroutine area is applied, which takes them, and the number of points in the interval, as input values, and calculates the area under the curve of the tangents of the 13 angles according to the trapezoidal rule. Finally, the value of the area is printed to the screen.
