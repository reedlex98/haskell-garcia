module Sexto where
import Data.Monoid

newtype Max =
  Max Int
  deriving (Ord, Eq, Show)

instance Semigroup Max where
    (Max x) <> (Max y)
        | Max x < Max y = Max y
        | Max x > Max y = Max x
        | otherwise = Max x

instance Monoid Max where
    mempty = Max (minBound :: Int)

maxAll :: [Max] -> Max
maxAll = mconcat


