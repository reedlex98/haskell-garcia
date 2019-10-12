module Quinto where

    data Fantasma a = Fantasma deriving Show

    instance Functor Fantasma where
        fmap g Fantasma = Fantasma