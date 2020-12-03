-- function to count number of bit 1 in a number
bit1Count :: Int -> Int
bit1Count 0 = 0
bit1Count x = (x `mod` 2) + bit1Count (x `div` 2)

main = do
    -- read 2 input and convert to integer than store to x and y
    input1 <- getLine
    input2 <- getLine
    
    let x = (read input1 :: Int)
    let y = (read input2 :: Int)

    -- print the result by calling bit1Count function
    print (bit1Count (x * y))