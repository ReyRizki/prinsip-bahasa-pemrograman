custTakeWhile :: (a->Bool) -> [a] -> [a]
custTakeWhile f [] = []
custTakeWhile f (x:xs)  | f x       = x : custTakeWhile f xs
                        | otherwise = []