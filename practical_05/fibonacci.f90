!Module with the subroutine for the fibonacci series
module fibonacci_series_creation

contains

!Creation of the subroutine for the fibonacci series
subroutine fib(input, output)
    implicit none
    integer (kind=4) :: i
    integer(kind=4), intent(in) :: input
    integer, dimension(:), allocatable, intent(out) :: output
    allocate(output(input))
    output(1) = 0
    output(2) = 1
    do i=3, input
      output(i) = output(i-1) + output(i-2)
    end do
    write (6,*) 'The fibonacci series of ', input, ' is ', output
end subroutine fib

end module fibonacci_series_creation

!Main code block
program fibonacci

!Import of the module for the use of the subroutine to create the fibonacci series
use fibonacci_series_creation

!Declaration of variables, where f is the input and series is an array of variable dimension that will contain the fibonacci series up to f
implicit none
integer (kind=4) :: f
integer, dimension(:), allocatable :: series

!Attribution of f to an integer number chosen by the user
write (6,*) 'Enter an integer '
read(5,*) f

!Usage of the subroutine for the fibonacci series up to n
call fib(f, series)

end program fibonacci
