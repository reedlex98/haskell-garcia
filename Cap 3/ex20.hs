module Vigesimo where
    data Cambio = Euro | Real | Dollar deriving Show
    data Moeda = Moeda {val :: Double, cur :: Cambio} deriving Show

    converteMoedas :: Moeda -> Cambio -> Moeda
    converteMoedas (Moeda x Real) Euro = Moeda (x * 0.22) Euro
    converteMoedas (Moeda x Dollar) Euro = Moeda (x * 0.91) Euro
    converteMoedas (Moeda x Dollar) Real = Moeda (x * 4.16) Real
    converteMoedas (Moeda x Euro) Real = Moeda (x * 4.58) Real
    converteMoedas (Moeda x Real) Dollar = Moeda (x * 0.24) Dollar
    converteMoedas (Moeda x Euro) Dollar = Moeda (x * 1.1) Dollar
    converteMoedas (Moeda x y) z = Moeda x z

    converterTodosReal :: [Moeda] -> [Moeda]
    converterTodosReal mdList = [ converteMoedas md Real | md <- mdList ]