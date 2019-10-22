module Main where

main :: IO ()
main = do
  putStrLn "Digite uma palavra"
  x <- getLine
  putStrLn $ "A palavra ao contrário é: "++ reverse x
