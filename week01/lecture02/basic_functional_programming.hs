square::Int->Int
square x = x*x

pow::Float->Float->Float
pow x y = x**y

sqRoot::Float->Float
sqRoot x = pow x 0.5


for::Int->Int->(Int->Int)->[Int]
for i j f = [f x | x <- [i..j]]

while::Int->(Int->Bool)->(Int->Int)->[Int]
while i p f = [f x | x <- [i..], p x]

-- printList::[Int]->IO()
-- printList [] = return ()



main::IO()
main = do
    print (sqRoot 3)
    print (for 1 10 square)
    print (while 1 (<10) square)