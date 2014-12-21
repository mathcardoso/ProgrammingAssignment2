## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  InvX <- NULL
  
  set <- function(y)
  {
    x <<- y 
    InvX <<- NULL
    
  }
  
  get <- function() x
  
  setInv <- function(inv) InvX <<- inv 
  
  getInv <- function() InvX   
  
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- funcList$getInv()
  if(!is.null(inv))
  {
    message("Retriving from the cache data")
    return(inv)
  }
  
  data <- funcList$get()
  
  inv <- solve(data)
  
  funcList$setInv(inv)
  
  inv
}
