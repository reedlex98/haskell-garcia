module ExemploDo where
    import Control.Monad 

    funcMaybe :: String -> Maybe String
    funcMaybe x = return x
        >>= \y -> return (reverse y)
        >>= \z -> return (take 3 z)
        >>= \w -> return (tail w)
        >>= \u -> return (x ++ u)

    funcMaybe' :: String -> Maybe String
    funcMaybe' x = do
        y <- return x
        z <- return (reverse y)
        w <- return (take 3 z)
        u <- return (tail w)
        return (x ++ u)