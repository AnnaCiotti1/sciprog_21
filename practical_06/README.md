The uploaded codes main.f90 and mm.f90 must be compiled and run as follows

make -f makefilef

./mmf

Main.f90
The module matrix_mult contains the declaration of the variables in the function for matrix multiplication.
The main code block initializes a matrix A of dimensions n and p by assigning its elements to the sum of the indices for row and column, while matrix B, of dimensions p and q, is made up of the differences between the indices. Matirx C, of imensions n and q, is initialized as a matrix of zeroes.
Successively, matrix C is calculated as the product between A and B, using the function mult for matrix multiplication. Lastly, all three matrices are printed to the screen through two nested loops that run first on rows and then on columns, where all the elements belonging to the same row are output on the same line.

Mm.f90
The file mm.f90 contains the function for matrix multiplication. All elements of the product matrix are calculated as the sum of the products of elements in a row by elements in the corresponding column of the other matrix.

Makefilef
The makefilef file contains the instructions to compile main.f90 and mm.f90. In particular,the line called linking corresponds to typing in the terminal

gfortran -o mmf main.o mm.o -lm

Therefore, the name that is being assigned to the executable to be run in the te
rminal is mmf. Calling mm.o and main.o imposes the execution of

gfortran -c -o3 --Wall mm.f90
gfortran -c -o3 --Wall main.f90.
