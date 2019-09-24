-- Cap 2, Ex 3 - Escreva uma funcao que receba um vetor de Strings e retorne uma lista com todos os elementos em ordem reversa
module DecimoQuinto where
    data Vetores = Palavra {palavra :: [String]} | PalavraReversa {reversa :: [String]} deriving Show

    stringReverse :: Vetores -> Vetores
    stringReverse (Palavra y) = PalavraReversa [ reverse x | x <- y]
    