module Setimo where
    data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado deriving Show

    ehTerca :: Dia -> Bool
    ehTerca Terca = True
    ehTerca _ = False

    filtraTercas :: [Dia] -> [Dia]
    filtraTercas = filter ehTerca