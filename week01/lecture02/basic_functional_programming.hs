--This file is in conjunction with the lecture notes (notes.md) in the same folder

--This is a function definition
--square function takes an integer and returns an integer
square::Float->Float --line explains the function signature
square x = x*x --line explains the function body

pow::Float->Float->Float --function signature
pow x y = x**y  --function body

sqRoot::Float->Float    --function signature
sqRoot x = pow x 0.5    --function body

--Basic Logical functions
isGreater::Int->Int->Bool --function signature
isGreater x y = x > y --function body

isEven::Int->Bool
isEven x = x `rem` 2 == 0

isLess::Int->Int->Bool --function signature
isLess x y = x < y --function body

--Basic Arithmetic functions
add::Int->Int->Int --function signature
add x y = x + y --function body

sub::Int->Int->Int --function signature
sub x y = x - y --function body

mul::Int->Int->Int --function signature
mul x y = x * y --function body


--Basic Control Flow functions
--ifElse function takes three arguments, a boolean, an integer and an integer
--Then it returns an integer

ifElse::Bool->Int->Int->Int --function signature
ifElse b x y = if b then x else y --function body

--ifElse function takes three arguments, a boolean, a function and a function
--Then it returns an integer
ifElseFunc::Bool->(Float->Float)->Float->(Float->Float)->Float->Float --function signature
ifElseFunc b f x g y = if b then f x else g y --function body


--placeholder type--> a



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
    -- print (sqRoot 3) --function call: prints the square root of 3
    -- print (for 1 10 square) --function call: prints the square of numbers from 1 to 10
    -- print (while 1 (<10) square) --function call: prints the square of numbers from 1 to 10

    -- lets try using our ifElseFunc function
    -- if we pass in True, it should return return square of 12
    -- if we pass in False, it should return return sqRoot of 12
    
    -- take input from the user
    putStrLn "Enter a T or F:"
    input <- getLine

    --convert T | t to True and F to False
    let selection = input == "T" || input == "t"


    print (ifElseFunc selection sqRoot 12 square 12) --function call: prints the square root of 12


    -- putStrLn "Enter a Number:"
    print ("10 is even: ", isEven 10)
    -- print (isEven 10)