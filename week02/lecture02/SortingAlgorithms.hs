squareList [] = []
squareList (x : xs) = x ^ 2 : squareList xs

{-
    What is squareList doing?
    squareList [1,2,3]
    1^2 : squareList [2,3]
    1^2 : (2^2 : squareList [3])
    1^2 : (2^2 : (3^2 : squareList []))
    1^2 : (2^2 : (3^2 : []))
    [1,4,9]
-}

squareListAnother list = [x ^ 2 | x <- list]

{-
    What is squareListAnother doing?
    squareListAnother [1,2,3]
    [ x ^ 2 | x <- [1,2,3]]
    [1^2,2^2,3^2]
    [1,4,9]
-}

sumTuple tupleList = [x * y | (x, y) <- tupleList]

listPairs list1 list2 = [(x, y) | x <- list1, y <- list2]

-- sorting algorithms
-- bubble sort
-- doBubble [] = []
-- doBubble [x] = [x]
-- doBubble (x : y : xs) = if x > y then y : doBubble (x : xs) else x : doBubble (y : xs)

-- bubble list = if list == doBubble list then list else bubble (doBubble list)

-- class bubble sort method
-- we need these functions
-- isSorted
isSorted :: Ord a => [a] -> Bool
isSorted [] = True
isSorted [x] = True
isSorted (x : y : ys) = if x <= y then isSorted (y:ys) else False

-- bubble
bubble :: Ord a => [a] -> [a]
bubble [] = []
bubble [x] = [x]
bubble (x : y : ys) =  if x <= y then x : bubble (y : ys) else y : bubble (x : ys)

-- bubbleSort
bubbleSort :: Ord a => [a] -> [a]
bubbleSort [] = []
bubbleSort list = if isSorted list then list else bubbleSort(bubble list)


-- Merge Sort
-- What is merge sort?-> Divide and Conquer
-- Divide the list into two halves
-- Sort the two halves
-- Merge the two halves

-- merge




main :: IO () = do
  let list1 = [2, 54, 34, 53, 23, 6, 34,28, 69, 710]
  putStrLn "Is The list sorted: "
  putStr "List: "
  print list1
  putStr "isSorted: "
  print (isSorted list1)
  putStrLn "bubbleSort: "
  print (bubbleSort list1)
