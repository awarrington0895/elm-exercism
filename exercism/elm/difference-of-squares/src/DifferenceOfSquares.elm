module DifferenceOfSquares exposing (difference, squareOfSum, sumOfSquares)


sum : Int -> Int
sum n =
    if n == 0 then
        0

    else
        n + (sum (n - 1))


squareOfSum : Int -> Int
squareOfSum n = 
    (sum n)^2
    


sumOfSquares : Int -> Int
sumOfSquares n =
    if n == 0 then
        0

    else
        (n ^ 2) + (sumOfSquares (n - 1))


difference : Int -> Int
difference n =
    (squareOfSum n) - (sumOfSquares n)
