module Main where
    import Control.Monad
    
    main :: IO ()
    main = do 
        let loop = do 
            putStrLn "Qual seu nome?"
            nome <- getLine
            if nome == "" then do
                putStrLn "Erro..."
                loop
            else
                putStrLn $ "Ola " ++ nome
        loop
        putStrLn "Fim"