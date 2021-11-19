!Inclusion of magic_square.fh
include 'magic_square.fh'

!Main code block
program magsq_file_input

!Import of the module msquare form magic_square.fh
use msquare

!Delcaration of variables
implicit none
integer(kind=4), allocatable, dimension(:,:) :: matrix
integer(kind=4) :: l, a, err, i, j
integer(kind=4), allocatable, dimension(:) :: line
logical(kind=4) :: ismagic

!Opening of the txt.txt file in readable mode, with attribution of the IOSTAT keyword to the variable err
open(UNIT=1, FILE='txt.txt', ACTION='read', FORM='formatted', STATUS='old', IOSTAT = err)

!l is going to be the number of lines in the file. It is incremented by one as long as the file contains readable lines
l = 0
do while (err .eq. 0)
   read(1,*, IOSTAT=err) a
   l = l + 1
enddo
l = l-1

!Go back to the beginning of the file
rewind(UNIT=1)

!Allocation of memory for the matrix and for every line, according to the dimension l
allocate(matrix(l,l))
allocate(line(l))

!Every line is read and its elements are placed in the matrix
do i = 1, l
   read(1,*, IOSTAT=err) line
   do j = 1, l
      matrix(i,j) = line(j)
   enddo
enddo

!The function isMagicSquare is used to determine whether the square is magic
ismagic = isMagicSquare(matrix, l)
write (6, *) 'Is the square in txt.txt magic?', ismagic

!The file is closed and kept
close(UNIT=1, STATUS='keep')

end program magsq_file_input
