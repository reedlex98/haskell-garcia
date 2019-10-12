module Oitavo where

import           Data.Functor.Contravariant

newtype NovoPred a =
  NovoPred
    { runNovoPred :: Maybe a -> Bool
    }
    
instance Contravariant NovoPred where
    contramap y (NovoPred x) = NovoPred (x . y)

    -- (a -> b) -> f b -> f a
    -- (a -> b) -> f (Maybe b -> Bool) -> f (Maybe a -> Bool)
