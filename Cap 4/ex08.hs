module Oitavo where

data Dinheiro =
  Dinheiro
    { valor     :: Double
    , correncia :: String
    }
  deriving (Show)

converteDolarParaReal :: [Dinheiro] -> [Dinheiro]
converteDolarParaReal = map (\dn -> Dinheiro (valor dn * 4.18) "Real")

converteRealParaDolar :: [Dinheiro] -> [Dinheiro]
converteRealParaDolar = map (\dn -> Dinheiro (valor dn * 0.24) "Dolar")

filtraDolar :: [Dinheiro] -> [Dinheiro]
filtraDolar = filter (\dn -> correncia dn == "Dolar")

somaDolares :: [Dinheiro] -> Double
somaDolares d = foldl (\soma dn -> soma + valor dn) 0 $ filtraDolar d

contaDolares :: [Dinheiro] -> Int
contaDolares d = length $ filtraDolar d