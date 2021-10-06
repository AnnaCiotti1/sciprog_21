The uploaded codes conversion.f90 and sum.f90 can be run after compilation as follows

gfortran -o conversion conversion.f90
gfortran -o sum sum.f90

./conversion.f90
./sum.f90

The code conversion.f90 converts an integer number, 3355431, to its corresponding float version, 3355432.0, and successively into its binary form. Upon divisionof log(float) by log(2.0), the number of 1 in the binary form is calculated.

The code sum.f90 compares the sum of 1/i, both when i goes from 1 to 1000, and when it goes from 1000 to 1. Due to the way floats are approximated, the two sums are not equivalent, even though, mathematically, they are.
