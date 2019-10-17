module AulaSete where

    -- TRANSFORMACOES NATURAIS (EM TERMOS COMPUTACIONAIS):
    -- EH UMA FUNCAO QUE TROCA CONSTRUTORES
    -- (TIPOS) DE kind * -> *

    -- class Monad m where
        -- return :: a -> m a
        -- (>>=) m a -> (a -> m b) -> m b

    -- instance Maybe where

    newtype Id a = Id a deriving Show

    instance Functor Id where
        fmap f (Id x) = Id (f x)

    safeHead :: [] a -> Maybe a
    safeHead [] = Nothing
    safeHead (a:_) = Just a

    talvez :: Maybe a -> Id a
    talvez (Just x) = Id x

    -- ESTAMOS FAZENDO UM PROGRAMA DENTRO DA MONADA MAYBE

    -- conta z = Just z >>= \x -> Just (3*x) >>= \y -> Just (x+y)
    conta :: Int -> Maybe Int
    conta z = do
        x <- Just z
        y <- Just (3*x)
        return (x + y)
