altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap p q [] = []
altMap p q [x] = [p x]
altMap p q (x : y : xs) = p x : q y : altMap p q xs