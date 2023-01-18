isOdd::Int->Bool
isOdd x = if x `rem` 2 /= 0 then True else False

 
addElemList::[Int]->[Int]
addElemList list = [x | x <- list, x `rem` 2/= 0]

main::IO()
main = do
    print (isOdd 3)
    print (addElemList [1,2,3,4,5,6,7,8,9,10])