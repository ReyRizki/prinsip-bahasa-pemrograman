data Tree a = Leaf a | Node (Tree a) (Tree a)
            deriving (Show)

splitHalf :: [a] -> ([a], [a])
splitHalf x = splitAt (length x `div` 2) x

balance :: [a] -> Tree a
balance [x] = Leaf x
balance xs = Node (balance ys) (balance zs)
            where (ys, zs) = splitHalf xs