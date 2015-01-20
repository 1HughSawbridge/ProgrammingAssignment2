

#whilst I understand the concept of lexical scoping and the practical need to cache 
#matrices to avoid inverting I don't really understand what is being asked here
#or the need to keep setting and getting variables using functions (I'm sure it is
#meant to be illustrative but still I don't get what it is trying to show)
#any help/examples would be appreciated, this is what I have so far




cacheSolve <- function( ) {
       if(!is.null(vX)){
         message("Fetchez la cache")
         return(vX)
       }else{
       vX<-solve(X)    
       }
vX
}
makeCacheMatrix <- function(side=3) {
  #creates an invertible square matrix of variable size  
  
  X<-matrix(runif(side,-side,+side),side,side)+diag(side)
  
  #inverts it 
  vX<-solve(X)
  vX
}
