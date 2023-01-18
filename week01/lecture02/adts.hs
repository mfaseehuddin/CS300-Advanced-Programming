--Abstract Data Types in Haskell
-- To Define a new type, we use the keyword "data"

data Complex = Complex Float Float
--To define a printing/Output overload, we use the keyword "deriving"
--Lets define the couterpart to C++ ostream overload
instance Show Complex where
    show (Complex x y) = show x ++ " + " ++ show y ++ "i"

-- To define a new function, we use the keyword "function"
-- This function takes two arguments, a Complex number and a Complex number
-- Then it returns a Complex number

addComplex::Complex->Complex->Complex
addComplex (Complex x y) (Complex x' y') = Complex (x+x') (y+y')


-- This function takes two arguments, a Complex number and a Complex number

--Lets Run this!
main::IO()
main = do
    let c1 = Complex 1 2
    let c2 = Complex 3 4
    let c3 = addComplex c1 c2
    print c3
