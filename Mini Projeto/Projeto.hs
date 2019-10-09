module Projeto where

import           Data.Monoid

data Indice a = Indice {indice :: Int, dados :: a}

(|>) :: a -> (a -> b) -> b
(|>) x f = f x

data Projeto =
  Projeto
    { nomeProjeto :: String
    , budget      :: Double
    , envolvidos  :: [Int]
    }
  deriving (Show)

class ToJSON a where
  toJSON :: a -> String

instance ToJSON Pessoa where
  toJSON p =
    "{nome: \"" ++
    nome p ++
    "\", cargo: \"" ++
    show (cargo p) ++ "\", salario: " ++ show (verSalario p) ++ "}"

instance ToJSON Projeto where
  toJSON p =
    "{nome: \"" ++
    nomeProjeto p ++
    "\", orcamento: \"" ++
    show (budget p) ++ "\", envolvidos: " ++ show (envolvidos p) ++ "}"

instance Semigroup Projeto where
  (Projeto nome1 budget1 env1) <> (Projeto nome2 budget2 env2) =
    Projeto (nome1 ++ ", " ++ nome2) (budget1 + budget2) (env1 ++ env2)

-- instance Monoid Projeto where
--   mempty = Projeto "" 0 []
--   mappend (Projeto nome1 budget1 env1) (Projeto nome2 budget2 env2) =
--     Projeto (nome1 ++ ", " ++ nome2) (budget1 + budget2) (env1 ++ env2)
instance Monoid Projeto where
  mempty = Projeto "" 0 []

data Cargo
  = Estagiario
  | Programador
  | Coordenador
  | Gerente
  deriving (Show)

data Pessoa =
  Pessoa
    { cargo :: Cargo
    , nome  :: String
    }
  deriving (Show)

verSalario :: Pessoa -> Double
verSalario (Pessoa Estagiario _)  = 1500
verSalario (Pessoa Programador _) = 5750.15
verSalario (Pessoa Coordenador _) = 8000
verSalario (Pessoa Gerente _)     = 10807.20

verFolha :: Pessoa -> String
verFolha p =
  "{nome: \"" ++
  nome p ++
  "\", cargo: \"" ++
  show (cargo p) ++ "\", salario: " ++ show (verSalario p) ++ "}"

promover :: Pessoa -> Pessoa
promover (Pessoa Estagiario n)  = Pessoa Programador n
promover (Pessoa Programador n) = Pessoa Coordenador n
promover (Pessoa Coordenador n) = Pessoa Gerente n
promover (Pessoa _ n)           = Pessoa Gerente n

contratarInicial :: String -> Pessoa
contratarInicial = Pessoa Estagiario

mediaSalarial :: [Pessoa] -> Double
mediaSalarial ps = foldl calculo 0 ps / fromIntegral (length ps)
  where
    calculo salario pessoa = salario + verSalario pessoa

contratarVariosEstag :: [String] -> [Pessoa]
contratarVariosEstag = map contratarInicial

rotinaPromocao :: Pessoa -> String
rotinaPromocao p = p |> promover |> verFolha

instance Functor Indice where
  fmap f (Indice i dados) = Indice i (f dados)
