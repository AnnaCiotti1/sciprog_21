The uploaded code file_input.f90 must be compiled and run as follows

gfortran -o file file.f90 ./file

in the presence of the file magic_square.fh and of a txt.txt file, which will contain a square matrix of any dimension.

The first line of the file includes magic_square.fh in the code, in order for the module msquare, contained in magic_square.fh, to be imported.
The main code block imports the module msquare.
Then, txt.txt is opened in readable mode, and the number of lines is calculated in a while loop that breaks when the end of the file is reached. Such condition is met when the variable corresponding to IOSTAT, i.e. err, assumes a value that is different from zero. The code goes back to the beginning of the file through the command rewind.
Knowing the number of lines, memory is allocated for the variable corresponding to the square matrix and for a variable called line. In a loop that runs over the l-lines, each of them at a time is attributed to the variable line. In a nested loop that runs over the columns, the l elements of line are attributed to the matrix.
Once the matrix has been built, the code checks whether it is magic through the function isMagicSquare contained in magic_square.fh. The outcome, T or F, is attributed to the logical variable ismagic, and written to the screen.
