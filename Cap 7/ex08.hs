module Oitavo where
    newtype NovoPred = NovoPred {runNovoPred :: Maybe a -> Bool}