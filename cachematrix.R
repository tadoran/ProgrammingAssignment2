## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    inversed <- NULL
    getData <- function(){ x }
    getInverse <- function(){ inversed }
    
    setData <- function(y){
        x <<- y
        inversed <- NULL
    }
    
    setInverse <- function(z){ inversed <<- z }

    list(get=getData,set=setData,getMatrix=getInverse,setMatrix=setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getMatrix()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <-x$get()
    m <- solve(data,...)
    x$setMatrix(m)
    m
}
