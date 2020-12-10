data Tree a = Leaf a | Node (Tree a) (Tree a)

t1 :: Tree Int
t1 = Node (Node (Leaf 1) (Leaf 2)) (Node (Leaf 3) (Leaf 4))

t2 :: Tree Int
t2 = Node (Leaf 1) (Node (Node (Leaf 6) (Leaf 9)) (Leaf 10))

degree :: Tree a -> Int
degree (Leaf n)    = 1
degree (Node x z) = degree x + degree z + 1

balanced :: Tree a -> Bool
balanced (Leaf _)     = True
balanced (Node l r)   = abs (degree l - degree r) <= 1 && balanced l && balanced r