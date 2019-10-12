module QuintaAula where

-- import Prelude hiding Monoid
    -- Lista de assuntos
    -- Capítulo 5
    -- Polimorfismo Parametrico
    -- Polimorfismo de Sub Tipo
    -- "" Duck Type (A partir a quantidade de parametros dados a uma função)
    -- "" Ad Hoc (utiliza-se do deriving)

data Bolsa a =
  Bolsa a a
    -- extrairSnd :: Sacola a b -> b
    -- extrairSnd (Sacola x y) = y

data Curso
  = SI
  | ADS
  | LOG
  | GE
  | GP
    -- show :: Show a => a -> String
    -- show EH UMA FUNCAO POLIMORFICA COM UMA RESTRICAO. A RESTRICAO SIGNIFICA QUE A VAR a ACEITA QUALQUER TIPO QUE TENHA UMA INSTANCIA DE Show PROGRAMADA
    -- Show, Eq, Enum:, Ord SAO TYPECLASSES EH UMA IMPLEMENTACAO DO POLIMORFISMO AD-HOC EM HASKELL. AS FUNCOES DECLARADAS EM UM TYPECLASS DEPENDERAO DA PROGRAMACAO DE SUAS INSTANCIAS.

instance Show Curso where
  show SI  = "CURSO DE PHP"
  show ADS = "CURSO DE COBOL"
  show LOG = "CURSO DE CAMINHAO"
  show GE  = "CURSO DE COACH"

instance Eq Curso where
  SI == ADS = False
  ADS == SI = True
  LOG == LOG = False
  _ == _ = True

instance Show a => Show (Bolsa a) where
  show (Bolsa x y) = "O primeiro eh " ++ show x ++ "\nO segundo eh " ++ show y

instance Eq a => Eq (Bolsa a) where
  (Bolsa a b) == (Bolsa c d) = (a == c) && (b == d) || (a == d) && (b == c)

class SimNao a where
  simnao :: a -> Bool

instance SimNao Char where
  simnao ' ' = False
  simnao _   = True

instance SimNao Bool where
  simnao = id

data Prod =
  Prod Int
  deriving (Show)

data Sum =
    Sum Int
    deriving (Show)

class Monoide m where
  mempty :: m
  (<!>) :: m -> m -> m

instance Monoide Sum where
  mempty = Sum 0
  (Sum x) <!> (Sum y) = Sum(x+y)

instance Monoide Prod where
  mempty = Prod 1
  (Prod x) <!> (Prod y) = Prod (x*y)

instance Monoide [a] where
  mempty = []
  (<!>) = (++)

-- mconc