--This file is in conjunction with the lecture notes (notes.md) in the same folder

--This is a function definition
--square function takes an integer and returns an integer
square::Int->Int --line explains the function signature
square x = x*x --line explains the function body

pow::Float->Float->Float --function signature
pow x y = x**y  --function body

sqRoot::Float->Float    --function signature
sqRoot x = pow x 0.5    --function body


-- Complex functions
-- A For loop
-- This function takes three arguments, an integer, an integer and a function
-- Then it returns a list of integers, ranging from the first integer to the second integer
for::Int->Int->(Int->Int)->[Int] --function signature
for i j f = [f x | x <- [i..j]] --function body


-- A While loop
-- This function takes three arguments, an integer, a function and a function
-- Then it returns a list of integers, ranging from the first integer to the second integer
while::Int->(Int->Bool)->(Int->Int)->[Int]
while i p f = [f x | x <- [i..], p x]

-- printList::[Int]->IO()
-- printList [] = return ()




--This is the main function, initialised with IO
-- IO is a monad, which is a type of data structure
-- IO is a data structure that can be used to perform input and output operations

-- print is a function that takes an argument and prints it to the console
main::IO()
main = do
    print (sqRoot 3) --function call: prints the square root of 3
    print (for 1 10 square) --function call: prints the square of numbers from 1 to 10
    print (while 1 (<10) square) --function call: prints the square of numbers from 1 to 10