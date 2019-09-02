module H where
    genList :: [String]
    genList = [[x] | x <- ['@','A'..'L'], x /= 'B', x /= 'F', x /= 'H', x /= 'I']