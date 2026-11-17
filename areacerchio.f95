PROGRAM circle
  IMPLICIT NONE
  REAL,PARAMETER :: pi=3.1415927
  REAL :: x,y
  PRINT*, "What diameter?"
  READ (*,*) x
  IF (x .GE. 5) THEN 
  PRINT*, "HUGE!!!!!"
  ELSE 
  PRINT*, "Nella Media"
  END IF
  y=pi*(x/2)**2
  PRINT*, "Area:"
  PRINT*, y, "cm^2"
END PROGRAM circle
