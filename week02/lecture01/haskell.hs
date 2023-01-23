import Distribution.Simple.Utils (xargs)
import System.Posix.Internals (puts)

{-
    Pattern matching is a way to match a value against a pattern. If the value
    matches the pattern, then the pattern is matched. If the value does not
    match the pattern, then the pattern is not matched.
-}

factorial 0 = 1
factorial x = x * factorial (x - 1)

{-
How is the factorial Function working?
    factorial 5 --> pattern matches with the first pattern, i.e: line 8
    5 * factorial 4
    5 * (4 * factorial 3)
    5 * (4 * (3 * factorial 2))
    5 * (4 * (3 * (2 * factorial 1)))
    5 * (4 * (3 * (2 * (1 * factorial 0)))) --> pattern matches with the second pattern, i.e: line 7
    5 * (4 * (3 * (2 * (1 * 1))))
    5 * (4 * (3 * (2 * 1)))
    5 * (4 * (3 * 2))
    5 * (4 * 6)
    5 * 24
    120
-}

-- piecewise function
facto n
  | n == 0 = 1
  | otherwise = n * facto (n - 1)

{-
    Group Characters
    (1) Lower Case
    (2) Upper Case
    (3) All Others
-}

group c
  | c >= 'a' && c <= 'z' = "Lower Case"
  | c >= 'A' && c <= 'Z' = "Upper Case"
  | otherwise = "Neither lower nor upper case"

-- List operations
-- head: first element of a list
head' [] = error "Empty List"
head' [x] = x
head' (x : _) = x

-- tail: list of all elements except the first
tail' [] = error "Empty List"
tail' (_ : xs) = xs

-- last: last element of a list
last' [] = error "Empty List"
last' [x] = x
last' (_ : xs) = last' xs

-- length
len' [] = 0
len' (_ : xs) = 1 + len' xs

-- null

-- list operators: ++, !!, reverse, take, drop, elem, cons operator
-- ++: concatenation: [1,2,3] ++ [4,5,6] -> [1,2,3,4,5,6]
-- !!: indexing: [1,2,3] !! 1 -> 2
-- reverse: reverse a list
-- take: take n xs -> take the first n elements of the list xs
-- drop: drop n xs -> drop the first n elements of the list xs
-- elem: elem x xs -> check if x is an element of the list xs
-- cons operator: x:xs -> x is the head of the list xs

sumList [] = 0
sumList (x : xs) = x + sumList xs

oddElements [] = []
-- returns the odd values of a list
oddElements (x : xs) = if x `rem` 2 /= 0 then x : oddElements xs else oddElements xs

{-
   What is odd elements doing?
   oddElements [1,2,3]
   1 : oddElements [2,3]
   1 : (if 2 `rem` 2 /= 0 then 2 : oddElements [3] else oddElements [3])
   1 : (if 0 /= 0 then 2 : oddElements [3] else oddElements [3])
   1 : (if False then 2 : oddElements [3] else oddElements [3])
   1 : oddElements [3]
   1 : (3 : oddElements [])
   1 : (3 : [])
   [1,3]
-}


oddElementsAnother list = [x | x <- list, odd x]
-- how does the [x | x <- xs] work? -> list comprehension

-- what does [a..b] do?-> [a,a+1,a+2,...,b]
-- what does [a,b..c] do? -> [a,b,a+b,a+2b,...,c]

main :: IO () = do
  --   print (factorial 100)
  putStrLn "Hello World"

  print (group 'A')

  let mylist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  putStrLn "List Operations"
  putStr "List:"
  print mylist
  putStr "\n\tLength:"
  print (len' mylist)
  putStr "\n\tHead:"
  print (head' mylist)
  putStr "\n\tTail:"
  print (tail' mylist)
  putStr "\n\tLast:"
  print (last' mylist)
  putStr "\n\tSum:"
  print (sumList mylist)
  putStr "\n\tOdd Elements:"
  print (oddElements mylist)
  putStr "\n\tOdd Elements Another:"
  print (oddElementsAnother mylist)

  putStrLn "Stuff"
  print [1, 2.5 .. 10]
