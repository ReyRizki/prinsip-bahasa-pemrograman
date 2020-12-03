data Expr = Val Int | Add Expr Expr

folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a
folde f g (Val n)     =  f n
folde f g (Add e1 e2) =  g (folde f g e1) (folde f g e2)

eval :: Expr -> Int
eval e = folde toEnum (+) e

size :: Expr -> Int
size e = folde (\e -> 1) (+) e