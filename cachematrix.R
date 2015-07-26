## Put comments here that give an overall description of what your
## functions do
## the program is trying to check if or not the inverse of the matrix exists. if not, calculate it
## if yes, return the one existing.

## Write a short comment describing this function
## set the matrix value, get the matrix value
## set the inverse of the matrix value, get the inverse of the matrix value.

makeCacheMatrix <- function(x = matrix()) {
  inv = NULL
  set = function(y) {
    x <<- y
    inv <<- NULL
  }
  get = function() x
  setinv = function(inverse) inv <<- inverse 
  getinv = function() inv
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function
## check the inverse of the matrix existing or not.
## if yes, return it.
## if not, calculate it.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv = x$getinv()
  if (!is.null(inv)){
    message("Got cached data!")
    return(inv)
  }
  mat.data = x$get()
  inv = solve(mat.data, ...)
  x$setinv(inv)
  return(inv)
}
