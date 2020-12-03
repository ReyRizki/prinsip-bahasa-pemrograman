import Data.Char

type Bit = Int

bin2int :: [Bit] -> Int
bin2int = foldr (\x y -> x + 2*y) 0

int2bin :: Int -> [Bit]
int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

make8 :: [Bit] -> [Bit]
make8 bits = take 8 (bits ++ repeat 0)

-- count number of occurence in a list
count a [] = 0
count a (x:xs)  | x == a    = 1 + (count a xs)
                | otherwise = count a xs

-- add parity in the end of the list
addParity :: [Int] -> [Int]
addParity x = x ++ [if (odd (count 1 x)) then 1 else 0] 

encode :: String -> [Bit]
encode = concat . map (addParity . make8 . int2bin . ord)

chop9 :: [Bit] -> [[Bit]]
chop9 [] = []
chop9 bits = take 9 bits : chop9 (drop 9 bits)

-- convert boolean to int. 1 for True and 0 for False
boolToInt :: Bool -> Int
boolToInt x     | x == True = 1
                | x == False = 0

-- parity check for 9 bits
parityCheck [] = error "Empty List"
parityCheck x   | boolToInt (odd (count 1 (init x))) == last x = init x
                | otherwise = error "Parity check failed"

decode :: [Bit] -> String
decode = map (chr . bin2int . parityCheck) . chop9

channel :: [Bit] -> [Bit]
channel = id

transmit :: String -> String
transmit = decode . channel . encode