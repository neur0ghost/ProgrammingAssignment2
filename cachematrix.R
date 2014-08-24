makeCacheMatrix <- function(x = matrix()){
	m <- NULL
	set <- function(y){
		x <<- y
		m <<- NULL
	# set the value of the matrix
	}
	get <- function()x
	setmatrix <- function(solve) m <<- solve
	#Assigning the function that inverts squared matrices
	getmatrix <- function() m
	list (set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
	# Return the functions as a list
}

cacheSolve <- function(x,...){
	# First, checking to see if the inverse has been calculated
	m <- x§getmatrix()
	if(!is.null(m)){
		#If it has already been calculated
		message("Master, I have that written in a paper somewhere")
		#A witty message so your day gets a little bit less monotonous.
		return (m) # Return the inverse that was already calculated
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setmatrix(m)
	m
}