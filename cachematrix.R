## Put comments here that give an overall description of what your
## functions do

#Allows users to find the inverse of a matrix.

## Write a short comment describing this function

#allows you to create a matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(inverseMatrix) m <<- inverseMatrix
    getInverse <- function() m
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

#finds the inverse of matrix x
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if (!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    m
  
}
