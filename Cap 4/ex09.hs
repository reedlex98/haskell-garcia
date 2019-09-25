module Nono where

data DiaSemana
  = Domingo
  | Segunda
  | Terca
  | Quarta
  | Quinta
  | Sexta
  | Sabado
  deriving (Show)

contaNegativos :: [Int] -> Int
contaNegativos =
  foldl
    (\cont n ->
       if n < 0
         then cont + 1
         else cont)
    0

contaLetraP :: String -> Int
contaLetraP =
  foldl
    (\cont letra ->
       if letra == 'P'
         then cont + 1
         else cont)
    0

contaSabados :: [DiaSemana] -> Int
contaSabados =
  foldl
    (\cont dia ->
       case dia of
         Sabado -> cont + 1 
         _ -> cont)
    0
