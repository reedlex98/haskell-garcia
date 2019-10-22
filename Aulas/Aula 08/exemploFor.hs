module Main where
    import Control.Monad

    main :: IO ()
    main = do
        z <- readLn
        forM_ [1..z] $ \i -> print i