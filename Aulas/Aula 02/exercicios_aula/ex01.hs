module Ex01 where
    data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado
        deriving (Enum, Ord, Eq, Show)
    
    -- toDia :: Int -> (Int, Dia)
    -- toDia 1 = (1, Domingo)
    -- toDia 2 = (2, Segunda)
    -- toDia 3 = (3, Terca)
    -- toDia 4 = (4, Quarta)
    -- toDia 5 = (5, Quinta)
    -- toDia 6 = (6, Sexta)
    -- toDia 7 = (7, Sabado)

    -- Jeito certo --
    -- O uso de Left ou Right implica num valor que já passou por uma validação, logo impuro
    toDia :: Int -> Either Dia String
    toDia 1 = Left Domingo
    toDia 2 = Left Segunda
    toDia 3 = Left Terca
    toDia 4 = Left Quarta
    toDia 5 = Left Quinta
    toDia 6 = Left Sexta
    toDia 7 = Left Sabado
    toDia x = Right "Valor invalido"