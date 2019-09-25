module Sexto where
    func :: (String -> String) -> String -> String
    func f s = f s ++ reverse s
