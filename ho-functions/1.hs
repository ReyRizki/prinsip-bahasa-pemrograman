add :: Int -> Int
add x = x + 1

mapfilter :: (a -> b) -> (a -> Bool) -> [a] -> [b]
mapfilter f p x = map f (filter p x)