altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap p q [] = []
altMap p q [x] = [p x]
altMap p q (x : y : xs) = p x : q y : altMap p q xs

luhnDouble :: Int -> Int
luhnDouble x = (x * 2) `mod` 9

luhn :: [Int] -> Bool
luhn x  | mod ((sum . altMap id luhnDouble . reverse) x) 10 == 0 = True
        | otherwise = False