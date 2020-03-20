## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inv<- NULL
  
  set<- function(y){
    x <<- y
    inv <<- NULL
  }
  
  get<-function() x
  
  invSet<- function(invs) inv<<- invs
  invGet<- function() inv
  list(set = set, get = get,
       invSet = invSet,
       invGet = invGet)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$invGet()
        if(!is.na(inv)){
          inv
        }
        dat <- x$get()
        inv<- solve(dat)
        x$invSet(inv)
}
