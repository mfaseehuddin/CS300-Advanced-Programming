-- merge sort with external ascending or descending order




-- lambda functions in haskell

-- \x -> x + 1


--write a function that takes a positive integer as input, and returns and the largest integer that can be formed by rearranging the digits

isSorted [] = True
isSorted [x] = True
isSorted (x : y : xs) = x <= y && isSorted (y : xs)

bubble [] = []
bubble [x] = [x]
bubble (x : y : ys) = if x >= y then y : bubble (x : ys) else x : bubble (y : ys)

bubbleSortSingleList [] = []
bubbleSortSingleList [x] = [x]
bubbleSortSingleList list = if isSorted list then list else bubbleSortSingleList (bubble list)

-- reverseList :: [Integer] -> [Integer]
-- reverseList [] = []
-- reverseList (x : xs) = reverseList xs ++ [x]

breakNumberToList :: Integer -> [Integer]
breakNumberToList 0 = []
breakNumberToList number = number `rem` 10 : breakNumberToList (number `div` 10)

convertNumberListToNumber :: [Integer] -> Integer -> Integer
convertNumberListToNumber [] _ = 0
convertNumberListToNumber (x : xs) exp = (x * exp) + convertNumberListToNumber xs (exp * 10)

maxPossible :: Integer -> Integer
maxPossible number = do
  let numList = breakNumberToList number
  let largestList = bubbleSortSingleList numList
  convertNumberListToNumber largestList 1


main::IO() = do
    print(maxPossible 2023)