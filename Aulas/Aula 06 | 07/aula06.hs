module Sexta where
    -- class Functor where
    -- fmap :: (a -> b) -> f a -> f b
    -- instance Functor [] where
    --     fmap = map
    -- data Maybe a = Just a | Nothing
    -- instance Functor Maybe where
    --     fmap f Nothing = Not hing
    --     fmap f (Just x) = Just (f x)
data Foo a = Foo a Int a Int deriving Show

instance Functor Foo where
    fmap f (Foo x y z w) = Foo (f x) y (f z) w

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:_) = Just x