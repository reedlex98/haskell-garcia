module Quarto where

    excluiVogais :: String -> String
    excluiVogais palavra = [ x | x <- palavra, x `notElem` "aeiouAEIOU" ]