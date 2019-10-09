module Cap6 where
    data Produto = Produto {preco :: Double, desconto :: Double} deriving (Show, Eq, Ord)

    buscaProd :: (Produto -> a) -> [Produto] -> ([a] -> a) -> a
    buscaProd f ps g = g (map f ps)

    maiorPrecoMenorDesc :: Produto -> Produto -> Produto
    maiorPrecoMenorDesc (Produto p1 d1) (Produto p2 d2) = Produto (max p1 p2) (max d1 d2)

    todos :: [Produto] -> Produto
    todos = foldl maiorPrecoMenorDesc (Produto 0 0)
