module DecimoSetimo where
    data Cripto = Mensagem String | Cifrado String | Erro deriving Show

    encriptar :: Cripto -> Cripto
    encriptar (Mensagem x) = Cifrado [ succ y | y <- x]
    encriptar (Cifrado z) = Erro
    encriptar _ = Erro

    decriptar :: Cripto -> Cripto
    decriptar (Cifrado x) = Mensagem [ pred y | y <- x]
    decriptar (Mensagem z) = Erro
    decriptar _ = Erro