## Put comments here that give an overall description of what your
## functions do
## ANSWER: This function returns the cached inverse of a matrix if stored or 
## computes the inverse of the matrix. Each function description are written in
## the short comment above each function

## Write a short comment describing this function
## This function "makeCacheMatrix" which is actually a list of 4 functions
## that sets and gets the matrix input and sets and gets the inverse of the
## matrix

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function()i
    list(set = set, 
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
## This function calculates the inverse of the matrix if not yet cached or 
## computes the value of the inverse of the matrix.
## If already cached, the function retreives the inverse matrix and prints the
## inverse

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if (!is.null(i)){
      message ("getting cached data")
      return(i)
    }
    data_inverse <- x$get()
    i <- solve(data_inverse, ...)
    x$setinverse(i)
    i
}
