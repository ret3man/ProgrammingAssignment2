## Put comments here that give an overall description of what your
## functions do

## Creates a function to store the matrix

makeCacheMatrix <- function(x = matrix()) {
    z <- NULL
  set <- function(y) {
          x <<- y
          z <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) z <<- inverse
  getinverse <- function() z
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## solves the previous function

cacheSolve <- function(x, ...) {
  x <- x$getinverse()
  if (!is.null(z)) {
          message("getting cached data")
          return(x)
  }
  data <- x$get()
  z <- solve(data, ...)
  x$setinverse(z)
  z
}
