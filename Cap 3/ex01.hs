module Primeiro where
    data Pergunta = Sim | Nao 

    pergNum :: Pergunta -> Int
    pergNum Sim = 1
    pergNum Nao = 0

    listPergs :: [Pergunta] -> [Int]
    listPergs prgs = [ pergNum x | x <- prgs ]

    and' :: Pergunta -> Pergunta -> Int
    and' Sim Sim = 1
    and' Sim Nao = 0
    and' Nao Sim = 0
    and' Nao Nao = 0

    or' :: Pergunta -> Pergunta -> Int
    or' Sim Sim = 1
    or' Sim Nao = 1
    or' Nao Sim = 1
    or' Nao Nao = 0

    not' :: Pergunta -> Pergunta -> Int
    not' Sim Sim = 0
    not' Sim Nao = 1
    not' Nao Sim = 1
    not' Nao Nao = 1