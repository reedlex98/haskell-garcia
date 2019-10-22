module Main where
    import Control.Monad
    import System.Random

    data Naipe = Ouros | Espadas | Copas | Paus deriving (Show, Enum)
    
    data Valor = Dois | Tres | Quatro | Cinco | Seis | Sete | Oito | Nove | Dez | J | Q | K | A deriving (Show, Enum)

    data Carta = Carta {valor :: Valor, naipe :: Naipe} deriving (Show)

    -- main :: IO ()
    -- main = do
    --     let acertou True = "Voce acertou"
    --         acertou False = "Errou..."
    --     baralho <- return [Carta x y | x <- [Dois .. A], y <-[Ouros .. Paus]]
    --     cartaNum <- randomRIO (1, length baralho)
    --     carta <- return $ baralho !! cartaNum
    --     putStrLn "Escreva a carta para advinhar: "
    --     palpite <- readLn
    --     putStrLn $ "Sua carta foi " ++ show (valor carta) ++ " de " ++ show (naipe carta)
    --     putStrLn $ acertou $ carta == palpite

    main :: IO ()
    main = do
        let acertou True = "Voce acertou"
            acertou False = "Voce errou..."
        let baralho = return [Carta x y | x <- [Dois .. A], y <- [Ouros .. Paus]]
        cartaNum <- randomRIO (1, length baralho)
        let carta = return $ baralho !! cartaNum
        putStrLn "Escreva a carta para adivinhar: "
        palpite <- readLn
        putStrLn ("Sua carta foi " ++ show (valor carta) ++ " de " ++ show (naipe carta))
        putStrLn $ acertou $ carta == palpite