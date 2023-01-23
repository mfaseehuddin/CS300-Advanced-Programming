diff1:: (Int, Int) -> (Int, Int)
diff1 (c,e) = (c*e, e-1)

diffPoly [] [] = []
diffPoly _ [] = []
diffPoly [] _ = []
diffPoly (x:xs) (y:ys) = [(x*y, y-1)] : diffPoly xs ys



diffentiate:: (Double -> Double) -> Double -> Double
diffentiate f x = (f (x + h) - f x) / h
    where h = 0.00001

--function to differentiate
f x = 3*x^2 + x**(1/2)
g x = 2*x^2 + 3*x + 1


newCoefficient::Double->Double->Double
newCoefficient c e = c * e

newExponent::Double->Double
newExponent e = e - 1

-- Given: "2x^5 + 1x^2"
-- First we extract every complete token i.e: 2x^5
-- tokenise::String->[String]




-- call the function
main = print (diff1 (1,2))