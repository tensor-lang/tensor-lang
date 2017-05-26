! Project Euler - Problem 1
!
! If we list all the natural numbers below 10 that are multiples of 3 or
! 5, we get 3, 5, 6 and 9.
!
! The sum of these multiples is 23.  Find the sum of all the multiples
! of 3 or 5 below 1000.

program main

  ! Static types are optional in tensor-lang. Any variable that starts with i,
  ! j, k, l, m, or n is assumed to be of type integer.  All other variables are
  ! assumed to be of type REAL. This design follows the ruby-lang philosophies
  ! of convention-over-configuration and optimizing for programmer happiness.
  integer, dimension(999) :: ints
  logical, dimension(999) :: mask
  integer, dimension(:), allocatable :: divisible_ints

  ! Tensor-lang's tensor-optimized syntax supports dedicated
  ! tensor-initialization expressions. Here we initialize an array with
  ! integers from 1 to 999.
  ints = (/ (i, i=1, 999) /)

  ! All the functions in tensor-lang's extensive standard library are
  ! tensor-aware. The mod, ==, and .or. builtins all automatically vectorize
  ! over their input tensors.
  mask = (mod(ints, 3) == 0) .or. (mod(ints, 5) == 0)

  ! Tensor-lang also comes with built-in support for tensor selections.
  divisible_ints = pack(ints, mask)

  ! Tensor-lang fixes python-lang's biggest mistake by providing a true print
  ! statement.
  print*, "The sum is:", sum(divisible_ints)

end program main
