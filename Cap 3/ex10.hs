module Decimo where
    revNum :: Int -> String -> String
    revNum n s =  reverse (take n s) ++ drop n s