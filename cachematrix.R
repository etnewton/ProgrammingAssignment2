## These functions take a invertable matrix and will put the inverse of the 
## matrix into cache.  The cacheSolve function checks for this cached inverse
## and returns the cached inverse if it exists. If the inverse is not in cache 
## cacheSolve will run makeCacheMatrix and put the inverse into cache and return
## this newly cached inverse.

## This function will make the inverse of your matrix into the cache inverse.

makeCacheMatrix <- function(x = matrix()) {
        blah <- NULL
        set <- function(m) {
                x <<- m
                blah <<- NULL
        }
        get <- function() x
        setMatrix <- function(solve) blah <<- solve
        getMatrix <- function() blah
        list(set = set, get = get,
             setMatrix = setMatrix,
             getMatrix = getMatrix)

}


## This function will first check to see if the inverse of your matrix is in
## cache. If it is in the cache it will retrieve the cached inverse. Otherwise
## it will make the inverse of your matrix into the cached inverse.

cacheSolve <- function(x, ...) {
        blah <- x$getMatrix()
        if(!is.null(blah)) {
                message("Getting cached Data")
                return(blah)
        }
        mat <- x$get()
        blah <- solve(mat, ...)
        x$setMatrix(blah)
        blah
        ## Return a matrix that is the inverse of 'x'
}
