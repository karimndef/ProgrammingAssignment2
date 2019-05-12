## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  ## Get the inverse property initialized
  index <- NULL
  
  ## set the matrix as in the example provided in the assignment guideline
  set <- function( matrix ) {
    m <<- matrix
    index <<- NULL
  }
  
  ## get the matrix as in the example provided in the assignment guideline
  get <- function() {
    ## Return the matrix
    m
  }
  
  ## set the inverse of the matrix
  setInverse <- function(inverse) {
    index <<- inverse
  }
  
  ## get the inverse of the matrix
  getInverse <- function() {
    ## Return the inverse property
    index
  }
  
 
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getInverse()
        
        ## return the inverse if already set
        if( !is.null(m) ) {
          message("getting cached data")
          return(m)
        }
        
        ## Get the matrix
        input <- x$get()
        m <- solve(input) %*% input
        x$setInverse(m)
        
        m
}



