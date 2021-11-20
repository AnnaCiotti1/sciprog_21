!Module with the subroutine to determine the number of moves to solve the hanoi problem between three rods with l disks
module tower_moves

contains

!Recursive subroutine to determine the number of moves to solve the hanoi problem between three rods with l disks
recursive subroutine tower (l, start, endpoint, middle)
   implicit none
   integer(kind=4), intent(in) :: l, start, endpoint, middle
   if (l .eq. 1) then
      write (6,*) 'Disk ', l, ' moved from rod ', start, ' to rod', endpoint
      return
   else
      call tower(l-1, start, middle, endpoint)
      write (6,*) 'Disk ', l, ' moved from rod ', start, ' to rod', endpoint
      call tower(l-1, middle, endpoint, start)
   endif
end subroutine tower

end module tower_moves

!Main code block
program hanoi_tower

!Import of the module to determine the number of moves to solve the hanoi problem between three rods with l disks
use tower_moves

!Declaration of the variable l, corresponding to the number of disks in the tower
implicit none
integer(kind=4) :: l

!Initialization of the variable l
write (6,*) 'Enter the number of disks to be moved'
read(5,*) l

!Calculation of the number of moves to place l disks from rod 1 to rod 3, using rod 2 as an intermediary
call tower (l, 1, 3, 2)
end program hanoi_tower
