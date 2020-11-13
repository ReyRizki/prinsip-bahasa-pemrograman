gcde :: Int -> Int -> Int
gcde x y    | (x == y)  = x
            | (x > y)   = gcde (x - y) y
            | (y > x)   = gcde y x