module Main where
    import System.Directory

    main :: IO ()
    main = do
        putStrLn "Digite o nome do arquivo. Será criado caso não exista"
        arq <- getLine
        putStrLn "Digite uma mensagem"
        mensagem <- getLine
        existe <- doesFileExist arq
        if existe then
            appendFile arq ("\n" ++ mensagem)
        else
            writeFile arq mensagem