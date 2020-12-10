data Prop = Const Bool
            | Var Char
            | Not Prop
            | Or Prop Prop
            | And Prop Prop
            | Imply Prop Prop
            | Equiv Prop Prop

type Assoc k v = [(k, v)]

find :: Eq k => k -> Assoc k v -> v
find k t = head [v | (k',v) <- t, k == k']

type Subst = Assoc Char Bool

eval :: Subst -> Prop -> Bool
eval _ (Const b) = b
eval s (Var x) = find x s
eval s (Not p) = not (eval s p)
eval s (Or p q) = eval s p || eval s q
eval s (And p q) = eval s p && eval s q
eval s (Imply p q) = eval s p <= eval s q
eval s (Equiv p q) = eval s p == eval s q

vars :: Prop -> [Char]
vars (Const _) = []
vars (Var x) = [x]
vars (Not p) = vars p
vars (Or p q) = vars p ++ vars q
vars (And p q) = vars p ++ vars q
vars (Imply p q) = vars p ++ vars q
vars (Equiv p q) = vars p ++ vars q

bools :: Int -> [[Bool]]
bools 0 = [[]]
bools n = map (False:) bss ++ map (True:) bss
            where bss = bools (n - 1)

rmdups :: Eq a => [a] -> [a]
rmdups [] = []
rmdups (x:xs) = x : filter (/= x) (rmdups xs)

substs :: Prop -> [Subst]
substs p = map (zip vs) (bools (length vs))
            where vs = rmdups (vars p)

isTaut :: Prop -> Bool
isTaut p = and [eval s p | s <- substs p]

p1 :: Prop
p1 = Or (Var 'A') (Var 'B')

p2 :: Prop
p2 = Or (Var 'A') (Not (Var 'A'))

p3 :: Prop
p3 = Equiv (Var 'A') (Var 'B')

p4 :: Prop
p4 = Equiv (Imply (Var 'A') (Var 'B')) (Or (Not (Var 'A')) (Var 'B'))