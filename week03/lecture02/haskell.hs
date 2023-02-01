--the data keyword
-- data is a keyword that allows us to define our own data types

-- data Bool = False | True
-- This is a datatype declaration
data Color = Red | Green | Yellow deriving Show
-- Color is the name of the type, and Red, Green, and Yellow are the values of the type


-- This is a datatype declaration for a Linked List
data Seq p = Nil | Node p (Seq p)

-- What are typeclasses?- A set of operations that can be performed on a type
-- We can define our own typeclasses
-- typeclasses
    -- Show
    -- Eq
    -- Ord
    -- Num
    -- Enum
    -- Bounded
    -- Read
    -- Functor
    -- Applicative
    -- Monad
    -- Foldable
    -- Traversable
    -- etc.

-- prettyPrint :: Show p => Seq p -> String
-- -- prettyPrint Nil = "\b\b\b\b |   "
-- prettyPrint Nil = "Nil"
-- prettyPrint (Node x xs) = show x ++ " -> " ++ prettyPrint xs


-- Show for Linked List
instance Show p => Show (Seq p) where
    show Nil = "Nil"
    show (Node x Nil) = show x
    show (Node x xs) = show x ++ ", " ++ show xs



-- Eq for Seq
instance Eq p => Eq (Seq p) where
    (==) Nil Nil = True
    (==) (Node x xs) (Node y ys) = x == y && xs == ys
    (==) _ _ = False

insertToSeq :: p -> Seq p -> Seq p
insertToSeq v Nil = Node v Nil
insertToSeq v (Node x xs) = Node x (insertToSeq v xs)

insertSorted :: Ord p => p -> Seq p -> Seq p
insertSorted v Nil = Node v Nil
insertSorted v (Node x xs)
    | v <= x = Node v (Node x xs)
    | otherwise = Node x (insertSorted v xs)

deleteSeq k Nil = Nil
deleteSeq k (Node x xs)
    | k == x = xs
    | otherwise = Node x (deleteSeq k xs)

main::IO() = do
    let list1 = Node 1 (Node 2 (Node 3 Nil))
    let list2 = Node 0 Nil
    let list3 = Node 1 (Node 2 (Node 4 (Node 8 (Node 16 (Node 32 Nil)))))

    print (deleteSeq 5 (insertSorted 5 (insertSorted 0 list3)))
    print (list1 == list1)


    -- print list1

    -- print list3