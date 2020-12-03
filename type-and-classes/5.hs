data Expr = Val Int | Add Expr Expr

increase :: Int -> Int
increase x = x + 1

addition :: Int -> Int -> Int
addition a b = a + b

folde                 :: (Int -> a) -> (a -> a -> a) -> Expr -> a
folde f g (Val n)     =  f n
folde f g (Add e1 e2) =  g (folde f g e1) (folde f g e2)