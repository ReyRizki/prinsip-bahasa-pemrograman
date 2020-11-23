normalizeUtil x xMax xMin = [(a - xMin) / (xMax - xMin) | a <- x]

normalize (x) = normalizeUtil x (maximum x) (minimum x)