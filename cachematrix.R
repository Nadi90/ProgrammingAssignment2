##  This program has two functions that cache the inverse of a matrix. 


## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    X <- matrix(1:4, 2, 2)
    Y <- function(solve) r <<- solve(X)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    r <- x$solve()
    if (!is.null(r)) {
        message("getting cached data")
            return(r)
    }
    r <- solve(X)
    ## Return a matrix that is the inverse of 'x'
    r
}
