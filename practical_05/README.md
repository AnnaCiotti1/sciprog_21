The uploaded codes fibonacci.f90 and hyperbolic_tangent.f90 must be compiled and run as follows

gfortran -o file file.f90 ./file

Fibonacci.f90

The module fibonacci_series_creations contains the subroutine to generate the fibonacci series of a number input. The output is an array
of variable length equal to the input, where every element corresponds to the sum of the previous two. The first two elements of the array
are 0 and 1. Lastly, the subroutine prints the array to the screen.

The main block requires the user to enter an integer number, and reads it from the screen to attribute it to the variable f.
Then, the subroutine for the generation of the Fibonacci series is applied, specifying the array called series, of variable length, as output.

Hyperbolic_tangent.f90

The tangents module contains two functions to generate the hyperbolic tangent of a number a, either according to MacLaurin's series, 
with a and a precision b as inputs, or logarithmically, only requiring a. MacLaurin's function calculates the hyperbolic tangent
adding increments as long as they are greater than, or equal to, b.

The main block requires the user to enter a positive number smaller than one, called delta, which will be the precision of MacLaurin's
expansion. Then, starting from -0.9 and with increments of 0.01, both functions are applied to x with a do loop of 181 steps, up to x=0.9.
The results are stored in two arrays, array_mac for the MacLaurin expansion and array_log for the logarithmic formulation,
which are printed to the screeen.
