factorial 0 = 1
factorial 1 = 1
factorial x = if x > 0 then x * factorial(x-1) else -1



main::IO() = do
    print(factorial 5)
    print(factorial 0)
    print(factorial (-12))