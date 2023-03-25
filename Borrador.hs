divide :: (a -> Bool) -> [a] -> ([a],[a])
divide p [] = ([],[])
divide p (xs) = (yz, zs)
    where 
        yz = takeWhile p xs
        zs = dropWhile p xs
--
palabras :: String -> [String]
palabras "" = []
palabras cs = ys : (palabras . drop 1) zs
   where (ys, zs) = span (/=' ') cs
--
longitudes :: [[a]] -> [Int]
longitudes xss = [(length xs) | xs <- xss]
--
une :: [[a]] -> [a]
une [] = []
une (x:xs) =  x ++ une(xs)
--
reagrupa :: [a] -> [[a]]
reagrupa [] = []
reagrupa xs = (take 4 xs): reagrupa (drop 4 xs)
--
inversas :: [[a]] -> [[a]]
inversas l = map lista (lista l)
lista :: [a] -> [a]
lista [] = []
lista (x:xs) = lista xs ++ [x]
--
agrupa :: [a] -> [Int] -> [[a]]
agrupa [] _     = []
agrupa _ []     = []
agrupa xs (n:ns) = take n xs : agrupa (drop n xs) ns
--
frase :: [String] -> String
frase [x] = x
frase (x:xs) = x ++ " " ++ (frase xs)
frase [] = []
--
clave :: String -> String
clave xss =
    frase (agrupa (une (inversas (reagrupa (une pxss)))) (reverse (longitudes pxss)))
    where 
        pxss = palabras xss