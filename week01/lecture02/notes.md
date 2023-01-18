# Lecture 2 Notes:
###### Please refer to suplementary .hs file for code examples you can run on your machine.
## Basic Introduction to Haskell
### What is Haskell?
Haskell is a language that offers the use of the Functional Programming Paradigm

### Data Types and Type Inference in Haskell
##### In Haskell, we have the following data types:
* Integers
* Floating Point Numbers
* Booleans
* Characters
* Strings
* Lists
* Tuples
* Functions

##### Type Inference
Haskell is a statically typed language, but it has a feature called type inference. This means that the compiler can infer the type of a variable based on the value that is assigned to it. For example, if we assign the value 5 to a variable, the compiler will infer that the variable is of type Int.



You can open GHCI, and type the following:

    Prelude> let x = 5
    Prelude> :t x
    x :: Integer

The compiler will infer that x is of type Integer, which is the same as Int in Haskell.


### Simple Haskell Expression Evaluation
##### Arithmetic Expressions
Haskell supports the following arithmetic operators:
* Addition (+)
* Subtraction (-)
* Multiplication (*)
* Division (/)
* Exponentiation (^)

##### Boolean Expressions
Haskell supports the following boolean operators:
* And (&&)
* Or (||)
* Not (not)

##### Comparison Expressions
Haskell supports the following comparison operators:
* Equal to (==)
* Not equal to (/=)
* Greater than (>)
* Less than (<)
* Greater than or equal to (>=)
* Less than or equal to (<=)

##### Conditional Expressions
Haskell supports the following conditional operators:
* If-Then-Else (if-then-else)
* Case