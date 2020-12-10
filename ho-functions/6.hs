type Bit = Int

unfold p h t x  | p x       = []
                | otherwise = h x : unfold p h t (t x)

chop8 :: [Bit] -> [[Bit]]
chop8 bits = unfold (== []) (take 8) (drop 8) bits

customMap f x = unfold (==[]) (f . head) tail x

custIterate f a = unfold (== -1) (\x -> x) f a