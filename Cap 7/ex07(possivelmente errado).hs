module Setimo where
    import           Control.Applicative
    newtype Derp a = Derp {runDerp :: Bool -> a} deriving Show

    instance Functor Derp where
        fmap g (Derp x) = Derp (g x)

    instance Applicative Derp where
        pure = Derp runDerp 
        (<*>) (Derp f) (Derp x) = Derp (f x)