-- Funcion recursiva que calcule la potencia de una base b a un exponente e
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Redundant bracket" #-}
potencia :: Int -> Int -> Int
potencia b 0 = 1
potencia b e = b * potencia b (e - 1)


une :: [[a]] -> [a]
une = concat


lista :: [[a]] -> [a]
lista [] = []
lista (x:xs) =  x ++ lista(xs)
