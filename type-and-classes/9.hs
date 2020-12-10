data Expr = Val Int | Add Expr Expr | Mul Expr Expr
value :: Expr -> Int
value e = eval e []
-- value (Val n) = n
-- value (Add x y) = value x + value y

data Op = EVAL Expr | ADD Int | MUL Int
type Cont = [Op]

eval :: Expr -> Cont -> Int
eval (Val n) c = exec c n
eval (Add x y) c = eval x (EVAL y : ADD 0 : c)
eval (Mul x y) c = eval x (EVAL y : MUL 1 : c)

exec :: Cont -> Int -> Int
exec [] n = n
exec (EVAL y : ADD 0 : c) n = eval y (ADD n : c)
exec (EVAL y : MUL 1 : c) n = eval y (MUL n : c)
exec (ADD n : c) m = exec c (n + m)
exec (MUL n : c) m = exec c (n * m)