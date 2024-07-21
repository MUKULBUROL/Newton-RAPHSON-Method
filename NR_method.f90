!NEWTON RAPHSON METHOD
program newton_raphson
    implicit none

    ! Declare variables
    real(8) :: x, x_new, f, f_prime
    real(8), parameter :: tol = 1.0e-6
    integer, parameter :: max_iter = 100
    integer :: iter

    ! Initial guess
    x = 1.0

    ! Newton-Raphson Iteration
    iter = 0
    do while (iter < max_iter)
        f = func(x)
        f_prime = func_derivative(x)
        
        ! Check if derivative is zero to avoid division by zero
        if (f_prime == 0.0) then
            print *, 'Derivative is zero. Newton-Raphson method fails.'
            stop
        end if
        
        x_new = x - f / f_prime
        
        ! Check for convergence
        if (abs(x_new - x) < tol) then
            print *, 'Root found: ', x_new
            print *, 'Iterations: ', iter
            stop
        end if
        
        x = x_new
        iter = iter + 1
    end do

    print *, 'Maximum iterations reached without convergence.'

contains

    ! Define the function whose root we want to find
    real(8) function func(x)
        real(8), intent(in) :: x
        func = x**2 - 2.0  ! Example: f(x) = x^2 - 2
    end function func

    ! Define the derivative of the function
    real(8) function func_derivative(x)
        real(8), intent(in) :: x
        func_derivative = 2.0 * x  ! Example: f'(x) = 2*x
    end function func_derivative

end program newton_raphson
