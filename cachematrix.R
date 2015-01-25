##
## This pair of functions is intended to Calculate the inverse
## of an Invertable Matrix and Cache the result for later & repeated
## reference. The intent is to save calculation cycles by having the
## desired inverse cached for later (perhaps repeated) use
## rather than calculating on demand for each use.
##
## Assumption is that calling routines submit only valid, invertable
## matrices to these functions.
##
## "makeCacheMatrix" 
##   - Caches the original matrix value to allow change comparisons
##   - Calculates the Inverse of the input matrix, storing the 
##     inverse result in a cached variable.


makeCacheMatrix <- function(x = matrix(inputMatrix)) {
    orgMatrix <<- x  ## orgMatrix is copy of original matrix
    invMatrix <<- solve(x)  ## invMatrix is Inverse Matrix
  }


## "cacheSolve" 
##  - checks if a cached inverse matrix (invMatrix) was created and if
##    the cached original copy matches the current inputMatrix.
##  - If cached invMatrix exists and the cached orgMatrix matches
##    the current inputMatrix the function returns the invMatrix
##  - If no cached invMatrix exists or orgMatrix != inputMatrix
##    the function calls "makeCacheMatrix" with inputMatrix 
##  - Finally returns invMatrix
##

cacheSolve <- function(x, ...) {
        inputMatrix <-x
        if(!is.Matrix(invMatrix) || inputMatrix != orgMatrix)
        {
          makeCacheMatrix(inputMatrix)
          
        } 
        x <- invMatrix
          ## Return a matrix that is the inverse of 'x'
}
