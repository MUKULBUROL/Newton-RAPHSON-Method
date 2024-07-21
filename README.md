#NEWTON RAPHSON METHOD <br>
This is a course project from COURSE- NUMERICAL METHODS by Professor PARAG D. PAWAR.<br>
I have attached code file in FORTRAN language. 

**Description of the Newton-Raphson Method Code**
<br>
> Newton-Raphson Method Implementation in Fortran

This Fortran program implements the Newton-Raphson method, a powerful technique for finding successively better approximations to the roots (or zeroes) of a real-valued function.

**Functioning of the Code-** <br>

> **Initialization:**
The code starts by defining the function for which we want to find the root and its derivative.
It sets an initial guess for the root and specifies the tolerance level for convergence.<br>
> **Iteration:**
The program enters a loop where it calculates the next approximation of the root using the formula:
𝑥𝑛+1=𝑥𝑛−𝑓(𝑥𝑛)𝑓′(𝑥𝑛)xn+1​ =xn​ −f′(xn)f(xn)
It updates the current approximation and checks if the change between successive approximations is within the specified tolerance.<br>

> **Convergence:**
The iteration continues until the difference between successive approximations is less than the tolerance, indicating that convergence has been achieved.
If the maximum number of iterations is reached without convergence, the program indicates failure. <br>

> **Output:**
Once convergence is achieved, the program prints the estimated root and the number of iterations it took to reach the solution.
