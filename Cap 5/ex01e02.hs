module PrimeiroESegundo where

import           Data.Monoid

data TipoProduto
  = Escritorio
  | Informatica
  | Livro
  | Filme
  | Total
  deriving (Show)

data Produto
  = Produto
      { valor :: Double
      , tp    :: TipoProduto
      }
  | Nada
  deriving (Show)

-- Solução com Monoide
instance Semigroup Produto where
    (Produto v1 t1) <> (Produto v2 t2) = Produto (v1 + v2) Total
    (Produto v1 t1) <> Nada = Produto v1 Total
    Nada <> (Produto v2 t2)  = Produto v2 Total
    Nada <> Nada = mempty

instance Monoid Produto where
    mempty = Nada
-- Testar com => mconcat [(Produto 10 Filme), (Produto 10 Filme), (Produto 10 Filme), Nada]

-- Solução sem Monoide
somaProduto :: [Produto] -> Produto
somaProduto =
  foldl (\pt pd -> Produto (valor pt + valor pd) Total) (Produto 0 Total)

-- Ex 02

totalGeral :: [Produto] -> Double
totalGeral p = valor (mconcat p) 
