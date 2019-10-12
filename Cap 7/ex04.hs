module Quarto where

import           Control.Applicative

data Arvore a
  = Nulo
  | Leaf a
  | Branch a (Arvore a) (Arvore a)
  deriving (Show)

instance Functor Arvore where
  fmap g Nulo           = Nulo
  fmap g (Leaf x)       = Leaf (g x)
  fmap g (Branch c l r) = Branch (g c) (fmap g l) (fmap g r)

instance Applicative Arvore where
  pure = Leaf
  (<*>) (Leaf f) (Leaf x)             = Leaf (f x)
  (<*>) (Leaf f) (Branch c l r)       = Branch (f c) (fmap f l) (fmap f r)
  (<*>) (Branch x y z) (Branch c l r) = Branch (x c) ((<*>) y l) ((<*>) z r)
  (<*>) (Branch x y z) _              = Nulo
  (<*>) _ _                           = Nulo
