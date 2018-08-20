## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 inv_m <- NULL
 set <- function(y){
   x <<- y
   inv_m <<- NULL
 }
 
 get <- function() x
 setinverse <- function(inverse) inv_m <<- inverse
 getinverse <- function() inv_m
 list(set = set, get = get,
      setinverse = setinverse,
      getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv_m <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv_m)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv_m)
  inv_m
}
