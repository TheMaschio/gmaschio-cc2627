PROGRAM verlet
  IMPLICIT NONE
  REAL :: xk, yk, zk, vkx, vky, vkz, fx, fy, fz, tau, m
  INTEGER :: i,n
  fx=0 
  fy=0.1 
  fz=0
  tau=0.2 
  m=1
  n=50
  xk=0
  yk=0
  zk=0
  vkx=0
  vky=0
  vkz=0
  
  xk=xk+tau*vkx+(tau**2/2)*fx/m
  yk=yk+tau*vky+(tau**2/2)*fy/m
  zk=zk+tau*vkz+(tau**2/2)*fz/m
  PRINT*, xk, yk, zk

  PRINT*, "x:"

  DO i=1,n
  xk=xk+tau*vkx+(tau**2/2)*fx/m
  vkx=vkx+tau/(m)*fx
  PRINT*, xk
  ENDDO
  
  PRINT*, "y:"

  DO i=1,n
  yk=yk+tau*vky+(tau**2/2)*fy/m
  vky=vky+tau/(m)*fy
  PRINT*, yk
  ENDDO

  PRINT*, "z:"

  DO i=1,n
  zk=zk+tau*vkz+(tau**2/2)*fz/m
  vkz=vkz+tau/(m)*fz
  PRINT*, zk
  ENDDO

  PRINT*, vkx, vky, vkz

  PRINT*, "Verifica:"
  
  xk=0
  yk=0
  zk=0
  vkx=0
  vky=0
  vkz=0
  
  vky=fy/m*n
  yk=1/2*fy/m*n**2

  PRINT*, vky, yk
 
END PROGRAM verlet
