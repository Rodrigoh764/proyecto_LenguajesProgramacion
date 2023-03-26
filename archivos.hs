-- Función longitudes tal que (longitudes xss) es la lista de las longitudes de los elementos xss.
longitud :: [[a]] -> [Int]
longitud [] = []
--Lista que tiene cabeza y cola (x:xs)
longitud (x:xs) = longitud xs ++ [xs] 