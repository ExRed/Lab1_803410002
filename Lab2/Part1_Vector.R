#(a) should return 26852735
i <- c(10:100)
result <- sum (i*i*i + 4*i*i)
print(result)


#(b) should return 2129170437
i <- c(1:25)
result <- sum( ((2^i)/i) + ((3^i)/i^2) )
print(result)