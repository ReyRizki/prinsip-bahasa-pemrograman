custDropWhile :: (a->Bool) -> [a] -> [a]
custDropWhile f [] = []
custDropWhile f (x:xs)  | f x       = custDropWhile f xs
                        | otherwise = x : xs