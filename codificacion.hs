
----------------------------------------------------------------------------------------------------
-- Biblioteca con las funciones necesarias para realizar la codificación de mensajes              
----------------------------------------------------------------------------------------------------
--module Codificacion where

-- Función divide tal que (divide p xs) es el par (ys,zs) donde ys es el mayor prefijo de xs cuyos
-- elementos cumplen p y zs es la lista de los elementos restantes de xs.
divide :: (a -> Bool) -> [a] -> ([a],[a])
divide _ [] = ([],[])
divide p (xs) = (yz, zs)
    where 
        yz = takeWhile p xs
        zs = dropWhile p xs

-- Función palabras tal que (palabras cs) es la lista de palabras contenidas en la cadena cs.
palabras :: String -> [String]
-- Aquí va tu código.

-- Función longitudes tal que (longitudes xss) es la lista de las longitudes de los elementos xss.
longitudes :: [[a]] -> [Int]
-- Aquí va tu código.

-- Función une tal que (une xss) es la lista obtenida uniendo los elementos de xss.
une :: [[a]] -> [a]
-- Aquí va tu código.

-- Función reagrupa tal que (reagrupa xs) es la lista obtenida agrupando los elementos de xs de 4 en
-- 4.
reagrupa :: [a] -> [[a]]
-- Aquí va tu código.

-- Función inversas tal que (inversas xss) es la lista obtenida invirtiendo los elementos de xss.
inversas :: [[a]] -> [[a]]
inversas l = map lista (lista l)
lista :: [a] -> [a]
lista [] = []
lista (x:xs) = lista xs ++ [x]

-- Función agrupa tal que (agrupa xs ns) es la lista obtenida agrupando los elementos de xs según
-- las longitudes indicadas en ns.
agrupa :: [a] -> [Int] -> [[a]]
agrupa [] _     = []
agrupa _ []     = []
agrupa xs (n:ns) = take n xs : agrupa (drop n xs) ns

-- Función frase tal que (frase xs) es la frase obtenida de las palabras de xs dejando un espacio en
-- blanco entre ellas.
frase :: [String] -> String
-- Aquí va tu código.

-- Función vlave que realiza el proceso de codificación completo.
clave :: String -> String
-- Aquí va tu código.
Set-ExecutionPolicy Bypass -Scope Process -Force; [ System.Net.ServicePointManager ] :: SecurityProtocol = [ System.Net.ServicePointManager ] :: SecurityProtocol -bor 3072; prueba { Invoke-Command> Invoke-Command <Block::Crear ( ( Invocar-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing ) ) ) -ArgumentList $ true } catch { Write-Error $ _ }