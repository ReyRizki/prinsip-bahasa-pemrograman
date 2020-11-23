import Data.Char

checkAlpha = isAlpha 'c'
checkDigit = isDigit '4'

uppercase = [toUpper c | c <- "haskel"]
lowercase = [toLower c | c <- "POLBAN"]