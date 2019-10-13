module Oitavo where

import           Data.Functor.Contravariant

newtype NovoPred a =
  NovoPred
    { runNovoPred :: Maybe a -> Bool
    }
    
instance Contravariant NovoPred where
    contramap y (NovoPred x) = NovoPred (x . fmap y)

ehMaiorQue5 :: NovoPred Int
ehMaiorQue5 = NovoPred (\(Just x) -> x > 5)

-- Testar com: 
-- runNovoPred (contramap (2*) (ehMaiorQue5)) (Just 10)

-- (a -> b) -> f b -> f a
-- (a -> b) -> f (Maybe b -> Bool) -> f (Maybe a -> Bool)