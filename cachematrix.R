## Put comments here that give an overall description of what your
## functions do

## ## the function set and get the matrix and then set and get the inves martix

makeCacheMatrix <- function(x = matrix()) {
        
        invert <- NULL
        set <- function(y) {
                x <<- y
                invert <<- NULL
        }
        
        get <- function() x
        
        
        setinversemat <- function(inverse) invert <<- inverse
        
        
        getinversemat <- function() invert
        
        list(set = set, get = get,
             setinversemat = setinversemat,
             getinversemat = getinversemat)
        

}


## Function firtly checks whether matrix is invers or notand then if it is needed invert it 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invert <- x$getinversemat()
        if(!is.null(invert)) {
                message("getting cached data.")
                return(invert)
        }
        data <- x$get()
        invert <- solve(data)
        x$setinversemat(invert)
        invert
}
