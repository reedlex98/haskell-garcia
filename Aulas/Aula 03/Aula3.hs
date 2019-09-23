module Aula3 where
    -- PARTE 01
    data Status = Abaixo | Acima | Saudavel
        deriving Show
    -- GUARDS: SAO CONDICOES BOOLEANAS, ORDENADAS
    -- CHAMADAS DENTRO DE UMA FUNCAO. SAO SEPARADAS PELO |

    imc :: Double -> Double -> Status
    imc peso altura
        | z <= 18 = Abaixo
        | z <= 25 = Saudavel
        | otherwise = Acima
        where
            z = peso / (altura * altura)
    
    modulo :: Double -> Double 
    modulo x 
        | x >= 0 = x
        | otherwise = -x
    
    -- MANEIRA MAIS COMUM NO HASKELL -- Concertar código dps
    -- pitagoras2 :: Double -> Double -> Double
    -- piragoras2 a b = sqrt(aQuadrado + bQuadrado)
    --     where
    --         aQuadrado = a*a
    --         bQuadrado = b*b

    pitagoras :: Double -> Double -> Double
    pitagoras a b =
        let 
            aQuadrado = a*a
            bQuadrado = b*b
        in sqrt(aQuadrado + bQuadrado)
    -- FIM DA PARTE 01

    -- PARTE 02
    
    fat :: Integer -> Integer -- Utiliza-se Integer ao invés de Int quando queremos aumentar o valor máximo limite para número inteiros
    fat n 
        | n <= 1 = 1
        | otherwise =  n * fat(n-1) -- Maneira nao recomendada de fazer recursividade

    fib :: Integer -> Integer
    fib t
        | t <= 0 = 0
        | t == 1 = 1
        | otherwise = fib(t-1) + fib(t-2)

    fibList :: Integer -> [Integer]
    fibList t = [fib(x) | x <- [0..t]]
    
    -- PATTERN MATCHING APLICADO A LIST

    elimVogal :: String -> String
    elimVogal [] = []-- PARTE 03
    elimVogal (x:xs)
        | elem x "aeiouAEIOU" = elimVogal xs
        | otherwise = x : elimVogal xs

    -- TESTE DE MESA (EQUATIONAL REASONING)
    -- Ida (empilhamento)
    -- elimVogal "FATEC" = "F" : elimVogal "ATEC"
    -- elimVogal "ATEC" = elimVogal "TEC"
    -- elimVogal "TEC" = "T" : elimVogal "EC"
    -- elimVogal "EC" = elimVogal "C"
    -- elimVogal "C" = "C" : []
    -- elimVogal [] = []

    -- Volta (desempilhamento)
    -- elimVogal "C" = "C" : []
    -- elimVogal "EC" = ["C"]
    -- elimVogal "TEC" = "T" : ["C"]
    -- elimVogal "ATEC" = ["TC"]
    -- elimVogal "FATEC" = "F" : ["TC"] = ["FTC"]

    -- FIM DA PARTE 02

    -- PARTE 03

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

    -- FIM DA PARTE 03
