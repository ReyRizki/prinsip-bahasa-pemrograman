custMap :: (a -> a) -> [a] -> [a]
custMap f (x:xs) = foldr (\x xs -> f x : xs) [] (x:xs)

custFilter :: (a -> Bool) -> [a] -> [a]
custFilter f (x:xs) = foldr (\x xs -> if (f x) then (x:xs) else xs) [] (x:xs)