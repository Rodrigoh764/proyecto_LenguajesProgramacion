-- Funcion recursiva que calcule la potencia de una base b a un exponente e
potencia :: Int -> Int -> Int
potencia b 0 = 1
potencia b e = b * potencia b (e - 1)





une :: [[a]] -> [a]
une = concat
