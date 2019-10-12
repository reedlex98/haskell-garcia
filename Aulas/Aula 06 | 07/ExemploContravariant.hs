module Cap07 where

import           Data.Functor.Contravariant

newtype Predicado a =
  Predicado
    { runPred :: a -> Bool
    }

ehMenor4 :: Predicado Int
ehMenor4 = Predicado (< 4)

tamanhoOito :: Predicado String
tamanhoOito = Predicado (\x -> length x == 8)

instance Contravariant Predicado where
  contramap g (Predicado p) = Predicado (p . g)
