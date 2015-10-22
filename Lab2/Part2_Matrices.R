#create A
A <- matrix(
  c(
    1, 1, 3,
    5, 2, 6,
    -2,-1,-3
  ),
  nrow=3,
  ncol=3
)
print("Matrix A")
print(A)


#create 3x3 matrix with all values 0
O <- matrix(
  c(0,0,0,0,0,0,0,0,0),#there might be a better way here, but 3x3 is still okay :D
  ncol=3,
  nrow=3
)
print("Matrix O")
print(O)

print("A^3 == O ?")
print(A %*% A %*% A == O)



#create Matrix B
row <- c( 10, -10, 10 )
B <- matrix(
  row,
  nrow=15,
  ncol=3,
  byrow = T
)
print("Matrix B")
print(B)