module ExemploRestricao where
    foo :: Show a => a -> String
    foo x = "O valor de tipo a eh: " ++ show x