module Main where

    import Text.Printf

    main :: IO ()
    main = do
        lista <- fmap (map words . lines) $ readFile "func.dat"
        salarios <- return $ map (\(_:vl:_) -> read vl) lista :: IO [Double]
        printf "%.2f\n" $ sum salarios
        print $ maximum salarios
        