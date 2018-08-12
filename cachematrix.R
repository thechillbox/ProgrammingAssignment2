## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##The "makeCacheMatrix" is a function which allows to create a matrix. 
##The matrix is actually a list containing a function that allows the user to set and get the value 
##of a matrix and set and get the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

##This function computes the inverse of the matrix created by "makeCacheMatrix"

cacheSolve <- function(x, ...) {
         i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
