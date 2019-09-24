module DecimoQuarto where
    data Valido = Sim String | Nao deriving Show

    isNomeValido :: String -> Valido
    isNomeValido [] = Nao
    isNomeValido x = Sim x