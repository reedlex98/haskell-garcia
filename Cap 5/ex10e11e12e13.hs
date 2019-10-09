module DezEOnzeEDozeETreze where
-- Ex 10
data Arvore a
  = Nulo
  | Leaf a
  | Branch a (Arvore a) (Arvore a)
  deriving (Show)

tamanhoArvore :: Arvore Int -> Int
tamanhoArvore (Branch c l r) = tamanhoArvore l + 1 + tamanhoArvore r
tamanhoArvore (Leaf x) = 1
tamanhoArvore Nulo = 0

somaElementos :: Arvore Int -> Int
somaElementos (Branch c l r) = somaElementos l + c + somaElementos r
somaElementos (Leaf x) = x
somaElementos Nulo = 0

-- Ex 11

posOrdem :: Show a => Arvore a -> [a]
posOrdem (Branch c l r) = posOrdem l ++ posOrdem r ++ [c] 
posOrdem (Leaf x) = [x]
posOrdem Nulo = []

-- teste de mesa para arvore: Branch 15 (Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo)) (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo))

-- posOrdem Branch 15 (Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo) (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo)) =  posOrdem (Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo) ++ posOrdem (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo)) ++ [15]

-- posOrdem Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo) = posOrdem (Leaf 6) ++ posOrdem (Branch 12 (Leaf 10) Nulo) ++ [11]

-- posOrdem Leaf 6 = [6]

-- posOrdem Branch 12 (Leaf 10) Nulo = posOrdem (Leaf 10) ++ posOrdem Nulo ++ [12]

-- posOrdem Leaf 10 = [10]

-- posOrdem Nulo = []

-- posOrdem Branch 15 (Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo) (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo)) = [6,10,12,11] ++ posOrdem (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo)) ++ [15]

-- posOrdem Branch 20 Nulo (Branch 22 (Leaf 21) Nulo) = posOrdem Nulo ++ posOrdem Branch 22 (Leaf 21) Nulo ++ [20]

-- posOrdem Nulo = []

-- posOrdem Branch 22 (Leaf 21) Nulo = posOrdem (Leaf 21) ++ posOrdem Nulo ++ [22]

-- posOrdem Leaf 21 = [21]

-- posOrdem Nulo = []

-- posOrdem Branch 15 (Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo) (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo)) = [6,10,12,11] ++ [21,22,20] ++ [15]

-- [6,10,12,21,22,20,15]

preOrdem :: Show a => Arvore a -> [a]
preOrdem (Branch c l r) = [c] ++ preOrdem l ++ preOrdem r 
preOrdem (Leaf x) = [x]
preOrdem Nulo = []

-- teste de mesa para arvore: Branch 15 (Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo)) (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo))

-- preOrdem Branch 15 (Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo)) (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo)) = [15] ++ preOrdem (Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo)) ++ preOrdem (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo))

-- preOrdem (Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo)) = [11] ++ preOrdem (Leaf 6) ++ preOrdem (Branch 12 (Leaf 10) Nulo))

-- preOrdem Leaf 6 = 6

-- preOrdem (Branch 12 (Leaf 10) Nulo)) = [12] ++ preOrdem (Leaf 10) ++ preOrdem Nulo

-- preOrdem Leaf 10 = 10

-- preOrdem Nulo = []

-- preOrdem Branch 15 (Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo)) (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo)) = [15] ++ [11, 6, 12, 10] ++ preOrdem (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo))

-- preOrdem (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo)) = [20] ++ preOrdem Nulo ++ preOrdem (Branch 22 (Leaf 21) Nulo)

-- preOrdem (Branch 22 (Leaf 21) Nulo) = [22] ++ preOrdem (Leaf 21) ++ preOrdem Nulo

-- preOrdem Leaf 21 = 21

-- preOrdem Branch 15 (Branch 11 (Leaf 6) (Branch 12 (Leaf 10) Nulo)) (Branch 20 Nulo (Branch 22 (Leaf 21) Nulo)) = [15] ++ [11, 6, 12, 10] ++ [20,22,21]

-- [15, 11, 6, 12, 10, 20, 22, 21]

-- Ex 12

inserir :: Ord a => a -> Arvore a -> Arvore a
inserir a Nulo = Branch a Nulo Nulo
inserir a (Branch c Nulo Nulo)
  | a > c = Branch c Nulo (Leaf a) 
  | a < c = Branch c (Leaf a) Nulo 
  | otherwise = Branch c Nulo Nulo
inserir a (Leaf x)
  | a < x = Branch x (Leaf a) Nulo
  | a > x = Branch x Nulo (Leaf a)
  | otherwise = Leaf x
inserir a (Branch c l Nulo)
  | a > c = Branch c l (Leaf a)
  | a < c = Branch c (inserir a l) Nulo
  | otherwise = Branch c l Nulo
inserir a (Branch c Nulo r)
  | a > c = Branch c Nulo (inserir a r)
  | a < c = Branch c (Leaf a) r
  | otherwise = Branch c Nulo r
inserir a (Branch c l r)
  | a > c = Branch c l (inserir a r)
  | a < c = Branch c (inserir a l) r
  | otherwise = Branch c l r

-- Ex 13

-- inserirMultiplos :: Ord a => [a] -> Arvore a -> Arvore a
-- inserirMultiplos (x:xs) a = inserirMultiplos xs (inserir x a)
-- inserirMultiplos [] a = a

-- Hlint Suggestion: Use foldl. Replace with: inserirMultiplos xs a = foldl (flip inserir) a xs
inserirMultiplos2 :: Ord a => [a] -> Arvore a -> Arvore a
inserirMultiplos2 xs a = foldl (flip inserir) a xs
