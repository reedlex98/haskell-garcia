module Primeiro where
    retornaMedia :: [Double] -> Double
    retornaMedia dList = foldl (+) 0 dList / fromIntegral (length dList)