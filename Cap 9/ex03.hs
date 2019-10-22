module Main where
    import Control.Monad
    import System.Random
    
    data Jogada = Pedra | Papel | Tesoura deriving (Show, Eq, Enum, Read)
    
    verificaVencedor :: Jogada -> Jogada -> Int
    verificaVencedor Pedra Tesoura =  1
    verificaVencedor Pedra Papel =  0
    verificaVencedor Tesoura Papel =  1
    verificaVencedor Tesoura Pedra  =  0
    verificaVencedor Papel Pedra =  1
    verificaVencedor Papel Tesoura = 0
    verificaVencedor _ _ =  2


    -- main :: IO ()
    -- main = do
    --     let venceu 1 =  "Voce venceu"
    --         venceu 0 = "Voce perdeu"
    --         venceu 2 = "Empate"
    --     jogadasPossiveis <- return [Pedra .. Tesoura]
    --     jogadaIndex <- randomRIO (0, (length jogadasPossiveis) - 1)
    --     jogadaCPU <- return $ jogadasPossiveis !! jogadaIndex
    --     putStrLn "Faça sua jogada (Pedra, Papel ou Tesoura): "
    --     jogada <- readLn
    --     putStrLn $ "Voce jogou " ++ show jogada ++ "\nCPU jogou: " ++ show jogadaCPU ++ "\nResultado: " ++ venceu (verificaVencedor jogada jogadaCPU)
    
    main :: IO ()
    main = do 
        let venceu 1 = "Voce venceu"
            venceu 0 = "Voce perdeu"
            venceu 2 = "Empate"
        let jogadasPossiveis = [Pedra .. Tesoura]
        jogadaIndex <- randomRIO (0, length jogadasPossiveis - 1)
        let jogadaCPU = jogadasPossiveis !! jogadaIndex
        putStrLn "Fa\231a sua jogada (Pedra, Papel ou Tesoura): "
        jogada <- readLn
        putStrLn $ "Voce jogou " ++ show jogada ++ "\nCPU jogou: " ++ show jogadaCPU ++ "\nResultado: " ++ venceu (verificaVencedor jogada jogadaCPU)
