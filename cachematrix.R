## This function make a special "Matrix" and take the cache of the method to
## calculate the inverse of the matrix

makeCacheMatrix <- function(x = matrix())
{
   s<-NULL;
   setMatrix<-function(y)
   {
      x<<-y;
      s<<-NULL;      
   }
   getMatrix<-function() x;
   setInverse<-function(solve) s<<-solve;
   getInverse<-function() s;
   list(setMatrix = setMatrix, getMatrix = getMatrix,
        setInverse = setInverse,
        getInverse = getInverse)
}


## This function take a Matrix and calculate the inverse

cacheSolve <- function(x, ...)
{
   s<-x$getInverse()
   if(!is.null(s))
   {
      message('getting cache matrix data');
      return(m);
   }
   matrix<-x$getMatrix();
   s<-solve(matrix,...)
   x$setInverse(s)
   s
}
