module Aula4 where
    -- LAMBDA: FUNCAO S/ CORPO (DECLARACAO INICIA POR BARRA)
    -- SINTAXE : \p1 p2 ... pn -> EXPRESSAO

    -- EXEMPLO 01 - SOMA
    -- (\x y -> x + y) 10 7

    -- HIGH ORDER FUNCTION: SAO FUNCOES QUE RECEBEM FUNCOES E/OU RETORNAM FUNCOES

    -- EXEMPLO 
    
    foo :: (Int -> Int) -> Int
    foo f = 1 + f 5 -- 1 -> Constante, f -> funcao, 5 -> parametro de f

    oof :: Int -> (Int -> Int)
    oof x = \y -> x+y

    -- CURRYING : EH O ATO DE SE PASSAR MENOS ARGUMENTOS QUE O PEDIDO PARA UM FUNCAO. A FUNCAO SEM OS ARGUMENTOS RESTANTE SE TORNA UMA HIGH ORDER FUNCTION

    -- EXEMPLO 

    -- let s = (\x y z -> x + y + z)
    
    -- EXEMPLO DE FUNCAO DE ALTA ORDEM COM ARGUMENTOS POLIMORFICOS
    (.) :: (b -> c) -> (a -> b) -> a -> c
    (.) f g a = f $ g a 

    -- somar :: Int -> Int -> Int -> Int
    -- somar x y z =

    -- Map
    -- map :: (a -> b) -> [a] -> [b]
    -- recebe uma funcao e uma lista, essa funcao eh aplicada a cada elemento da lista e esses elementos compoe uma nova lista que eh retornada por esse map 

    map2 :: (a -> b) -> [a] -> [b]
    map2 _ [] = []
    map2 f (a:as) = f a : map2 f as 

    -- Filter
    -- filter :: (a -> Bool) -> [a] -> [a]
    -- recebe uma funcao e uma lista, essa funcao eh aplicada a cada elemento da lista, os elementos que retornaram True quando passados a essa funcao compoe a nova lista que eh retornada pelo filter

    filter2 :: (a -> Bool) -> [a] -> [a]
    filter2 _ [] = []
    filter2 f (a:as)
        | f a == True = a : filter2 f as
        | otherwise = filter f as

    -- foldl (Reduce)
    -- foldl :: Foldable t => (b -> a -> b) -> b -> t a -> b

    foldl2 :: (b -> a -> b) -> b -> [a] -> b
    foldl2 _ b [] = b
    foldl2 f b (a:as) = foldl f (f b a) as

    contaPar :: Int -> Int -> Int
    contaPar cont a
        | even a = cont + 1
        | otherwise = cont

    -- unfold 
    -- Maybe (a,b) PODE SER
    -- Just (a,b) -> Deu certo
    -- Nothing -> DEU ERRADO (PARADA)    
    unfold :: (b -> Maybe (a,b)) -> b -> [a]
    unfold f b = case f b of 
        Just (a,b) -> a: unfold f b
        Nothing -> []
    
    -- Primeira coordenada sai na lista (a)
    -- Segunda coordenada vai pro test case (b)
    poo :: Int -> Maybe (Int, Int)
    poo n
        | n <= 50 = Just (n, n+1)
        | otherwise = Nothing


    


