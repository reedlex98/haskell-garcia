module ExemploTypeClass where

-- Resumo: estrutura que permite a alteração de comportamentos padroes de funções ou operadores. Parece com as interfaces do Java 

data Coisa a
  = Nada
  | UmaCoisa a
  | DuasCoisas a a
  deriving (Read)

-- Typeclass Show permite transformar qualquer tipo em String

instance Show a => Show (Coisa a) where
    show Nada = "Nadinha..."
    show (UmaCoisa x) = "Coisa com o elemento " ++ show x
    show (DuasCoisas x y) = "Coisa com elementos " ++ show x ++ " e " ++ show y

-- Typeclass Read permite a conversao de uma entrada de texto para qualquer tipo desejado

lerCoisa :: Coisa Int -> Coisa Int
lerCoisa Nada = UmaCoisa 0
lerCoisa (UmaCoisa x) = UmaCoisa (x+1)
lerCoisa (DuasCoisas x y) = DuasCoisas (x*2) (y-3)

data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado deriving (Enum, Show)