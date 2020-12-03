isAll :: (a -> Bool) -> [a] -> Bool
isAll f [] = True
isAll f (x:xs)      | f x      = isAll f xs
                    | otherwise = False