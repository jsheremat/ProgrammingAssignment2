## Put comments here that give an overall description of what your
## functions do
#draft2

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  #this function sets and gets a matrix, 
  #and sets and gets the matrix inverse
  
  m<-NULL
  #set the matrix
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  #get the matrix
  get<-function() x
  #set the inverse
  setmatrix<-function(solve) m<<- solve
  #get the inverse
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  #obtains the matrix from the function input
  m<-x$getmatrix()
  if(!is.null(m)){
    #this determines if the matrix inverse is stored in the memory cache
    message("getting cached data")
    return(m)
  }
  #loads the matrix
  matrix<-x$get()
  #calculates the matrix inverse
  m<-solve(matrix, ...)
  #this stores the inverse in the memory cache
  x$setmatrix(m)
  m
}
