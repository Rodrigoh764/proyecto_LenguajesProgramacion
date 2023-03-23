--Funcion recursiva que calcule la potencia de una base b a un exponente e
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use camelCase" #-}
potencia :: Int -> Int -> Int
potencia b 0 = 1
potencia b e = b * potencia b (e-1)

reparte :: [a] -> ([a],[a])
reparte[x] = ([x],[])
reparte(x:y:zs) = (x:l1,y:l2) where (l1,l2) = reparte zs



--Funcion que genera n copias de un elemento x. Por ejemplo:
-- replica 3 2
-- [2,2,2]
replica :: Int -> Int -> [Int]
--Replica de 0 con cualquier elemento es la lista vacia
replica 0 _ = []
-- : contruyen una lista
replica n x = x:replica (n-1) x


--El doble factorial se define como:
--0!! = 1
--1!! = 1
--n!! = n*(n-2)*...*...*3*1 si es impar
--n!! = n*(n-2)*...*...*4*1 si es par
dobleFactorial :: Int -> Int
dobleFactorial 0 = 1
dobleFactorial 1 = 1
dobleFactorial n = n * dobleFactorial (n-2)




invertOne :: [a] -> [a]
invertOne [x, y] = [y, x]
invertOne xs = xs
invert :: [[a]] -> [[a]]
invert = map invertOne
----------

-- recursividad no final


inversas :: [[a]] -> [[a]]
inversas l = map lista (lista l)
lista :: [a] -> [a]
lista [] = []
lista (x:xs) = lista xs ++ [x]