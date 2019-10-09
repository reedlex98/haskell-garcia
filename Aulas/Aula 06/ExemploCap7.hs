module ExemploCap7 where

import           Control.Applicative
    -- Funtores em haskell precisam implementar a função fmap
    -- class Functor f where
    --     fmap :: (a -> b) -> f a -> f b
    -- Funtor Maybe
    -- data Maybe a = Just a | Nothing

divisao :: Double -> Double -> Maybe Double
divisao x 0 = Nothing
divisao x y = Just (x / y)
    -- instance Functor Maybe where
    --     fmap g Nothing = Nothing
    --     fmap g (Just x) = Just (g x)

instance Applicative Maybe where
    pure = Just
    (Just f) <*> (Just x) = Just (f x)
    _ <*> _ = Nothing

instance Applicative [] where
    pure x = [x]
    fs <*> xs = [f x | f <- fs , x <- xs]