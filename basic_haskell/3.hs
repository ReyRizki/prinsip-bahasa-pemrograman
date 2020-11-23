checkEvenOdd :: Int -> String
checkEvenOdd n  | even n        = "Genap "
                | odd n         = "Ganjil "

checkPosNeg :: Int -> String
checkPosNeg n   | n > 0         = "Positif"
                | n < 0         = "Negatif"
                | n == 0        = "Nol"

checkEvenOddPosNeg :: Int -> IO()
checkEvenOddPosNeg n = putStrLn ((checkEvenOdd n) ++ (checkPosNeg n))
