
potencia :: Int  -> Int   -> Int 
potencia b 0 = 1
potencia b 1 = b
potencia b e = b * potencia b (e-1)