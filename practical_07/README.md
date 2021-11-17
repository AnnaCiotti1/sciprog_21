The uploaded codes polynomial.f90 and pointers.f90 must be compiled and run as follows

gfortran -Wall -o file file.f90 ./file

polynomial.f90
The module subroutines contains the subroutine polynomial_generation, which takes as input the base for the polynomial and the desired order, and outputs the power of the polynomial at that order. Since the first term in the expansion corresponds to order 1 and exponentiation and factorial of 0, the factorials for the expansion are calculated using (order-1) as base. The starting value of the factorial is taken to be (order-1), and a do loop multiplicates that value by all integers comprised between 1 and (order-2). Lastly, the base of the expansion is elevated to (order-1) and divided by the calculated factorial of (order-1).
The main code block expresses e as exponential function of exponent 1.0, and initializes the base for the expansion, x, as 1. The order of the polynomial is taken as input from the user, and the memory for the polynomial array poly_array is allocated. The first term of the polynomial is initialized as 1. Then, in a do loop that runs from 2 to the chosen order, the subroutine for the generation of the terms is called, and the output is assigned to the array term of order i. Lastly, the sum of the terms is calculated and indicated as poly in a do loop that runs over the indices of the array, and both the polynomial array and the difference between e and poly are printed to the screen.
The last section of the main code block calculates poly for all orders ranging from 2 to 15, in a do loop that employs the subroutine. The differences between e and poly are written to the screen, and commented upon.

pointers.f90
The module subroutines contains the subroutines to allocate an integer pointer array p of dimension x (allocatearray), fill it with ones (fillwithones), print it to the screen without going to a new line for every cipher (printarray), and lastly free the memory by deallocating it.
The main code block asks the user to input an integer number x, which will be the dimension of the pointer array p, and applies in sequence all the subroutines that are present in the module.
