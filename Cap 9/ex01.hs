module Main where

main :: IO ()
main = do
  putStrLn "Digite um numero: "
  numero <- readLn
  if even numero
    then putStrLn "Ele eh PAR"
    else putStrLn "Ele eh IMPAR"
