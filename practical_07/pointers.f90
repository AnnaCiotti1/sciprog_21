!Module with subroutines
module subroutines

contains

!Subroutine to allocate x memory to an array pointer p
subroutine allocatearray(p, x)
   implicit none
   integer(kind=4), intent(in) :: x
   integer(kind=4), pointer, dimension(:), intent(inout) :: p
   allocate(p(x))
   return
end subroutine allocatearray

!Subroutine to fill p with ones
subroutine fillwithones(p, x)
   implicit none
   integer(kind=4), pointer, dimension(:), intent(inout) :: p
   integer(kind=4), intent(in) :: x
   integer(kind=4) :: i
   do i = 1, x
      p(i) = 1
   end do
   return
end subroutine fillwithones

!Subroutine to print the elements of p on the same row
subroutine printarray(p, x)
   implicit none
   integer(kind=4), pointer, dimension(:), intent(inout) :: p
   integer(kind=4), intent(in) :: x
   integer(kind=4) :: i
   do i = 1, x
      write(6, '(i4)', advance='no') p(i)
   end do
   return
end subroutine printarray

!Subroutine to deallocate memory from p
subroutine freememory(p)
   implicit none
   integer(kind=4), pointer, dimension(:), intent(inout) :: p
   deallocate(p)
   return
end subroutine freememory

end module subroutines

!Main code block
program pointers

!Import of the module with subroutines
use subroutines

!Declaration of variables
implicit none
integer(kind=4) :: x
integer(kind=4), pointer, dimension(:) :: p

!Initialization of x as an integer number input from the user
write(6,*) 'Enter the desired dimension of the array'
read(5,*) x

!Allocation of x memory to p
call allocatearray(p, x)

!Filling of p with ones
call fillwithones(p, x)

!Writing of p to the screen
call printarray(p, x)

!Deallocation of memory from p
call freememory(p)

end program pointers
