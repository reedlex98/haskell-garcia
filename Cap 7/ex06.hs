module Sexto where

    data Dupla a = Dupla a Int a deriving Show

    instance Functor Dupla where
        fmap g (Dupla x y z) = Dupla (g x) y (g z)