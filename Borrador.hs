--segmentos :: (a -> Bool) -> [a] -> ([a],[a])
--segmentos _ [] = []
--segmentos p (xs) = takeWhile p xs

--

divide :: (a -> Bool) -> [a] -> ([a],[a])
divide _ [] = ([],[])
divide p (xs) = (yz, zs)
    where 
        yz = takeWhile p xs
        zs = dropWhile p xs

--

agrupa :: [a] -> [Int] -> [[a]]
agrupa [] _     = []
agrupa _ []     = []
agrupa xs (n:ns) = take n xs : agrupa (drop n xs) ns

