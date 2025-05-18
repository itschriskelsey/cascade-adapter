! Caskade Programming Language Adapter for FORTRAN
! Created on May 18, 2025
! By Chris Kelsey of Blue Vision Studios

module caskade_adapter
  implicit none
  integer, parameter :: TRUE = 1
  integer, parameter :: FALSE = 0

contains

  integer function NOT(x)
    integer, intent(in) :: x
    if (x == TRUE) then
      NOT = FALSE
    else
      NOT = TRUE
    endif
  end function NOT

  integer function AND(a, b)
    integer, intent(in) :: a, b
    if (a == TRUE .and. b == TRUE) then
      AND = TRUE
    else
      AND = FALSE
    endif
  end function AND

  integer function OR(a, b)
    integer, intent(in) :: a, b
    if (a == TRUE .or. b == TRUE) then
      OR = TRUE
    else
      OR = FALSE
    endif
  end function OR

  integer function EQ(a, b)
    integer, intent(in) :: a, b
    if (a == b) then
      EQ = TRUE
    else
      EQ = FALSE
    endif
  end function EQ

  integer function NEQ(a, b)
    integer, intent(in) :: a, b
    if (a /= b) then
      NEQ = TRUE
    else
      NEQ = FALSE
    endif
  end function NEQ

  integer function TO_BOOL(x)
    integer, intent(in) :: x
    if (x == 0) then
      TO_BOOL = FALSE
    else
      TO_BOOL = TRUE
    endif
  end function TO_BOOL

end module caskade_adapter
