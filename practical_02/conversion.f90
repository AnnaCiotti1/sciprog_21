program conversion
! Declare variables 
   integer (kind=4) :: i,inum,tmp,numdigits
   real(kind=4) :: fnum

! Intialise 4-byte integer
   inum = 33554431
! Convert to 4-byte float
   fnum = real(inum)       
   

! Complete the expression
  numdigits = nint(log(fnum)/log(2.0)) 
  write(6,*) ' The number of digits is ',numdigits

   write(6,'(a,i0,a,f0.1,a,b0)')  'inum=',inum,', fnum=',fnum,', inum in binary=',inum


end program conversion
