module DecimoSexto where
    data Numero = Ok Double | Erro String deriving Show

    dividir :: Numero -> Numero -> Numero
    dividir (Ok x) (Ok 0) = Erro "Erro"
    dividir (Ok x) (Ok y) = Ok (x/y)