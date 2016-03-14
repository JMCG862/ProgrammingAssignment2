## function has two functions, setmatrix and getmatrix. 
## setmatrix is used to set the value of the matrix in the global environment
## getmatrix returns the values of the matrix

makeCacheMatrix <- function(x = matrix()) {
  matrix.inverse<- NULL
setmatrix <- function(y){ 
 matrix.inverse <<- NULL
 x<<-y
}
getmatrix <- function()x
list(getmatrix = getmatrix, setmatrix = setmatrix)
}


## This functions searches for the value of m, 
## if there is no value for matrix.inverse, then it calculates it with the solve() and stores it in m trough the MakeCacheMatrix function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(!is.null(x$matrix.inverse)){
    message("getting cached data")
    return(x$matrix.inverse)
  }
  data <- x$getmatrix()
  matrix.inverse <- solve(data)
  x$matrix.inverse <- matrix.inverse
}
