The uploaded code hanoi.f90 can be run after compilation as follows

gfortran -o hanoi hanoi.f90

./hanoi

The module tower moves contains the recursive subroutine tower, which determines the number of moves required to move l disks between three rods, where one is the starting point, one is the endpoint and one is used as intermediary. The hanoi rule requires to move all disks with the condition that bigger disks cannot be placed on top of smaller ones. The starting rod accomodates all disks in ascending order.
If the number of disks is one, it is moved directly from rod one to rod three. This is the base case. Else, the subroutine moves the disks recursively from the start to the endpoint through the intermediary. This is done for l-1 disks, which are displaced from rod1 to rod 2 through rod3. Then, as rod3 is empty, the l-th diks is moved there, and the remaining l-1 are moved from rod2 to rod3 on top of disk l, passing through rod1.
The main code block requires the user to enter the desired number of disks to be moved, and then applies the subroutine to write to the screen the succession of required moves to displace all disks from rod1 to rod3, using rod2 as an intermediary.
