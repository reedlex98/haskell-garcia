module AulaSete where

    -- TRANSFORMACOES NATURAIS (EM TERMOS COMPUTACIONAIS):
    -- EH UMA FUNCAO QUE TROCA CONSTRUTORES
    -- (TIPOS) DE kind * -> *

    newtype Id a = Id a deriving Show

    instance Functor Id where
        fmap f (Id x) = Id (f x)

    safeHead :: [] a -> Maybe a
    safeHead [] = Nothing
    safeHead (a:_) = Just a

    talvez :: Maybe a -> Id a
    talvez (Just x) = Id x

