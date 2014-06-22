## Put comments here that give an overall description of what your
## functions do
##
## R programming Assignments Week 3
## Gradings by Peer Assessment
## File Contains 2 functions: makeCacheMatrix and cacheSolve
## 
## Comments for function makeCacheMatrix
## Function makeCacheMatrix creates a special "matrix" object that can cache its inverse, in the following steps
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse of the matrix using the "Solve" function
## get the value of the inverse of the matrix
##
##
makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setsolve <- function(solve) m <<- solve
	getsolve <- function() m
	list(set = set, get = get,
		setsolve = setsolve,
		getsolve = getsolve)

}


## Comments for function cacheSolve
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
## If the inverse has already been calculated and available in cache it retrives the inverse from the cahche
## Otherwise it calculates and return the inverse of the matrix
##
cacheSolve <- function(x, ...) {
	m<- x$getsolve()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m<- solve(data, ...)
	x$setsolve(m)
	m
}
