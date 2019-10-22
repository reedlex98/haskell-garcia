module Main where
    import Control.Monad

    main :: IO ()
    main = do
        z <- readLn
        let dentro i = do
            putStrLn $ "Numero " ++ show i
            readLn
        ns <- mapM dentro [1..z]
        putStrLn $ "Resultado: " ++ show (sum ns)