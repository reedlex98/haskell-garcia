module Main where

    -- main :: IO ()
    -- main = putStrLn "Hello world!"

    safeHead :: [] a -> Maybe a
    safeHead [] = Nothing
    safeHead (a:_) = Just a

    main :: IO ()

    main = do
        putStrLn "Digite uma palavra"
        x <- getLine
        case safeHead x of
            Nothing -> putStrLn "ERRO..."
            Just letra ->  putStrLn $ "A LETRA EH: " ++ [letra]

    main'' = do
        putStrLn "Digite um numero: " 
        >> readLn >>= \x -> putStrLn "Digite ooutro numero: "
        >> readLn >>= \y -> putStrLn $ "A SOMA EH: " ++ show (x+y)

    main' = do
        putStrLn "Digite um numero: "
        x <- readLn
        putStrLn "Digite um numero: "
        y <- readLn
        putStrLn $ "A SOMA EH: " ++ show (x+y)