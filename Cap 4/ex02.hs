module Segundo where
    verificaPalindromo :: String -> Bool
    verificaPalindromo x = x == reverse x

    filtraPalindromos :: [String] -> [String]
    filtraPalindromos = filter verificaPalindromo 