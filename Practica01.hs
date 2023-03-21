-- ---------------------------------------------------------------------------------------------- --
-- Lógica Computacional, 2023-2                                                                   --
-- Práctica 1: Codificación de mensajes                                                           --
-- ---------------------------------------------------------------------------------------------- --
module Practica01 where

import Codificacion

run = 
    do
        putStr "Introduce un mensaje: "
        str <- getLine
        putStrLn (clave str)