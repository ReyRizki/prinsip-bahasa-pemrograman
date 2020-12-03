isAny :: (a -> Bool) -> [a] -> Bool
isAny f [] = False
isAny f (x:xs)      | f x      = True
                    | otherwise = isAny f xs