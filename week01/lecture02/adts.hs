import Data.Complex (conjugate)
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

makeConjugate::Complex->Complex
makeConjugate (Complex x y) = Complex x (-y)

multiplyComplex::Complex->Complex->Complex
multiplyComplex (Complex x y) (Complex x' y') = Complex (x*x' - y*y') (x*y' + y*x')



-- This function takes two arguments, a Complex number and a Complex number

--Lets Run this!
main::IO()
main = do
    let c1 = Complex 1 2
    let c2 = Complex 3 4
    let c3 = addComplex c1 c2
    print c3

    --multiply a complex number by its conjugate
    print (multiplyComplex c1 (makeConjugate c1))

