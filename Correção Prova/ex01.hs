module Ex01 where
    data Cargo = Programador | Gerente deriving (Eq,Show,Ord)
    data Func = Func String Double Cargo deriving (Eq, Show, Ord)

    retirar:: [Func] -> [Func]
    retirar = filter (\(Func x y z) -> z /= Programador)
    
    -- maiorSalario :: [Func] -> (Double, Double)
    -- maiorSalario xs = (maiorSalarioGerente, maiorSalarioProgramador)
    -- where
    --     maiorSalarioGerente = maximum (map (\(Func x y z) -> y) (filter (\(Func x y z) -> z == Gerente) xs)) 
        -- maiorSalarioProgramador = maximum (map (\(Func x y z) -> y) (filter (\(Func x y z) -> z == Programador) xs)) 

    -- f3 :: ( a -> b) -> (a, c) -> (b, c)
    -- f3 f w = (f (a w), (c w))

    f2 :: (a -> b -> b) -> [a] -> b -> b
    f2 f x y = y

    someFunc :: Int -> String -> String
    someFunc numero palavra = palavra

