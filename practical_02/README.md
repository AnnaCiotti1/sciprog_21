the uploaded codes conversion.f90 and sum.f90 must be compiled and run as follows

gfortran -o file file.f90
./file

Conversion.f90

An integer number, inum=33554431, is converted into float, fnum. 
Successively, the value of inum is assigned to a temporary variable, tmp, which is converted to binary, binnum, by a while loop of divisions by 2: if the integer part of the result is zero, binnum will display a zero, else it will display one. Tmp is updated to tmp/2, and the loop is repeated as long as tmp > 0.
Since binnum results to be a series of twentyfive ones, fnum can be written as 2^25. Therefore, the number of digits of binnum, numdigits, is calculated as the integer result of the division of log(fnum) by log(2.0).
Lastly, numdigits, inum, fnum and binnum are written to the screen.

Sum.f90
The sum of all numbers 1/i, where i varies from 1 to 1000, is calculated in a loop as sum1. Then, it is calculated as i varies from 1000 to 1, as sum2. Mathematically, sum1 and sum2 should be equivalent, but, due to the approximations in the storing of float numbers, they are not. The difference between sum1 and sum2 is written to the screen.
