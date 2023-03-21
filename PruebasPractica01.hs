module PruebasPractica01 where

import Test.QuickCheck
import Codificacion

-- Ejercicio 1
prueba1 = divide (< 3) [1,2,3,4,1,2,3,4] == ([1,2],[3,4,1,2,3,4])
prueba2 = divide (< 9) [1,2,3]           == ([1,2,3],[])
prueba3 = divide (< 0) [1,2,3]           == ([],[1,2,3])
prueba4 = divide ('t'>) "El gatito duerme mucho" == ("El ga","tito duerme mucho")

-- Ejercicio 2
prueba5 = palabras "eres lo que piensas" == ["eres", "lo", "que", "piensas"]
prueba6 = palabras "El gatito duerme mucho" == ["El","gatito","duerme","mucho"]
prueba7 = palabras "Haskell es un lenguaje de programacion puramente funcional. Haskell es elegante" 
          == ["Haskell","es","un","lenguaje","de","programacion","puramente","funcional.","Haskell","es","elegante"]

-- Ejercicio 3
prueba8 = longitudes ["eres", "lo", "que", "piensas"] == [4,2,3,7]
prueba9 = longitudes [[1,2,3],[4,5,6],[]] == [3,3,0]
prueba10 = longitudes ["Haskell" , "Haskell..."] == [7,10]

-- Ejercicio 4
prueba11 = une ["eres", "lo", "que", "piensas"] == "eresloquepiensas"
prueba12 = une [[2,2,2],[2,3]] == [2,2,2,2,3]
prueba13 = longitudes (palabras (une ["Haskell","es","elegante"])) == [17]

-- Ejercicio 5
prueba14 = reagrupa "eresloquepiensas" == ["eres","loqu", "epie", "nsas"]
prueba15 = reagrupa "erestu"           == ["eres", "tu"]
prueba16 = reagrupa [1,2,3,4,5,6,7,8,9] == [[1,2,3,4],[5,6,7,8],[9]]

-- Ejercicio 6
prueba17 = inversas ["eres", "loqu", "epie", "nsas"] == ["sere", "uqol", "eipe", "sasn"]
prueba18 = une (inversas ["eres", "loqu", "epie", "nsas"]) == "sereuqoleipesasn"
prueba19 = inversas ["AnitaLavaLaTina", "1001"] == ["aniTaLavaLatinA", "1001"]

-- Ejercicio 7
prueba20 = agrupa "sereuqoleipesasn" [7,3,2,4] == ["sereuqo", "lei", "pe", "sasn"]
prueba21 = agrupa (une (inversas ["AnitaLavaLaTina"])) [5,4,2,4] == ["aniTa","Lava","La","tinA"]
prueba22 = agrupa [1,2,3,4,5,6] [1,2,3] == [[1],[2,3],[4,5,6]]

-- Ejercicio 8
prueba23 = frase ["sereuqo", "lei", "pe", "sasn"] == "sereuqo lei pe sasn"
prueba24 = frase ["anita","lava","la","tina"] == "anita lava la tina"
prueba25 = frase (agrupa (une (inversas ["aniTaLavaLatinA"])) [5,4,2,4]) == "Anita Lava La Tina"

-- Ejercicio 9
prueba26 = clave "eres lo que piensas" == "sereuqo lei pe sasn"
prueba27 = clave "Haskell es elegante" == "ksaHelle el estnage"
prueba28 = clave "Anita Lava La Tina" == "tinA va LaTa Laani"

-- Calificación:
correctas = length $ filter (== True) [prueba1,prueba2,prueba3,prueba4,prueba5,prueba6,prueba7,prueba8,prueba9,prueba10,prueba11,prueba12,prueba13,
            prueba14,prueba15,prueba16,prueba17,prueba18,prueba19,prueba20,prueba21,prueba22,prueba23,prueba24,prueba25,prueba26,prueba27,prueba28]
calificacion = (fromIntegral correctas :: Float) * 10 / 28

run = do putStr "Prueba 1:  " 
         quickCheck prueba1
         putStr "Prueba 2:  "
         quickCheck prueba2
         putStr "Prueba 3:  "
         quickCheck prueba3
         putStr "Prueba 4:  "
         quickCheck prueba4
         putStr "Prueba 5:  "
         quickCheck prueba5
         putStr "Prueba 6:  "
         quickCheck prueba6
         putStr "Prueba 7:  "
         quickCheck prueba7
         putStr "Prueba 8:  "
         quickCheck prueba8
         putStr "Prueba 9:  "
         quickCheck prueba9
         putStr "Prueba 10: "
         quickCheck prueba10
         putStr "Prueba 11: "
         quickCheck prueba11
         putStr "Prueba 12: "
         quickCheck prueba12
         putStr "Prueba 13: "
         quickCheck prueba13
         putStr "Prueba 14: "
         quickCheck prueba14
         putStr "Prueba 15: "
         quickCheck prueba15
         putStr "Prueba 16: "
         quickCheck prueba16
         putStr "Prueba 17: "
         quickCheck prueba17
         putStr "Prueba 18: "
         quickCheck prueba18
         putStr "Prueba 19: "
         quickCheck prueba19
         putStr "Prueba 20: "
         quickCheck prueba20
         putStr "Prueba 21: "
         quickCheck prueba21
         putStr "Prueba 22: "
         quickCheck prueba22
         putStr "Prueba 23: "
         quickCheck prueba23
         putStr "Prueba 24: "
         quickCheck prueba24
         putStr "Prueba 25: "
         quickCheck prueba25
         putStr "Prueba 22: "
         quickCheck prueba26
         putStr "Prueba 22: "
         quickCheck prueba27
         putStr "Prueba 22: "
         quickCheck prueba28
         putStr "\nCalificación: "
         putStr ((show calificacion) ++ "\n")


