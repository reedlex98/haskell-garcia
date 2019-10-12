module PrimeiroESegundo where

import           Control.Applicative

data Coisa a
  = UmaCoisa a
  | DuasCoisas a a
  | ZeroCoisa
  deriving (Show)

instance Functor Coisa where
  fmap g ZeroCoisa        = ZeroCoisa
  fmap g (UmaCoisa x)     = UmaCoisa (g x)
  fmap g (DuasCoisas x y) = DuasCoisas (g x) (g y)

instance Applicative Coisa where
  pure = UmaCoisa
  (UmaCoisa f) <*> (UmaCoisa x) = UmaCoisa (f x)
  (UmaCoisa f) <*> (DuasCoisas x y) = DuasCoisas (f x) (f y)
  (DuasCoisas f g) <*> (DuasCoisas x y) = DuasCoisas (f x) (g y)

