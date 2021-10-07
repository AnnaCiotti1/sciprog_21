The uploaded code trapezodial_rule.f90 can be run after compilation as follows

gfortran -o trapezoidal_rule trapezoidal_rule.f90

./trapezoidal_rule

It performs the following tasks
-calculates the sum of tan(a) and tan(b), where a and b are the extremes of the integration interval
-generates 11 x points between a and b
-in a loop, sums 2tan(x)
-writes the sum of tan(a),tan(b) and 2tan(x)
-compares the obtain results with log(2.0) and prints the difference to the screen.
