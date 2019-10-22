module Main where

main :: IO ()
main = do
  putStrLn "Digite uma palavra: "
  palavra <- getLine
  putStrLn $ "Palavra invertida: " ++ reverse palavra
