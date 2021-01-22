Put comments here that give an overall description of what your
## functions do
## Matrix inversion is usually a costly computation and there may be some benefit 
## to caching the inverse of a matrix rather 
## than computing it repeatedly

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## this function creates a matrix object than can cache its inverse
  
  makeCacheMatrix <- function(x = matrix()) {
    d <- NULL
    set <- function(y){
      x <<- y
      d <<- NULL
    }
    get <- function()x
    setInverse <- function(inverse) d <<- inverse
    getInverse <- function() d 
    list(set = set, get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
  }
  
  
  ## Write a short comment describing this function
  ## This function computes the inverse of the special matrixâ returned by 
  ## makeCacheMatrix above. If the inverse has already ## been calculated 
  ## (and the matrix has not changed), then cacheSolve should retrieve the 
  ## inverse from the cache
  
  
  cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
  }
  ## Return a matrix that is the inverse of 'x'
  d <- x$getInverse()
  if(!is.null(d)){
    message("getting cached data")
    return(d)
  }
  mat <- x$get()
  d <- solve(mat,...)
  x$setInverse(d)
  d
} 