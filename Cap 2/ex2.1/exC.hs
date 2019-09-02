module C where
    genList :: [String]
    genList = [ "A" ++ x : "BB" | x <- ['a' .. 'g']] 
