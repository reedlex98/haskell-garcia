module Setimo where
    import           Control.Applicative
    import           Data.Functor.Contravariant

    newtype Derp a = Derp {runDerp :: Bool -> a}

    instance Functor Derp where
        fmap g (Derp x) = Derp (g . x)
    -- x :: Bool -> a
    -- g :: a -> b

    -- Funcao usada para testar a instancia de Functor para Derp
    umoudois :: Derp Int 
    umoudois = Derp (\x -> if x then 1 else 0)
    
    -- Não foi possivel implementar uma instancia de Applicative para Derp, pois f e x em (Derp f) (Derp x), respectivamente, são do tipo Bool -> a, logo a composição f . x está incorreta uma vez que f recebe um valor do tipo genérico a como parametro quando, na verdade, deveria receber um valor Bool

    -- instance Applicative Derp where
    --     pure = Derp runDerp 
    --     (<*>) (Derp f) (Derp x) = Derp (f . x)
