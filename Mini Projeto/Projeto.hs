module Projeto where

    (|>) :: a -> (a -> b) -> b
    (|>) x f = f x

    data Cargo = Estagiario | Programador | Coordenador | Gerente deriving Show

    data Pessoa = Pessoa {cargo :: Cargo, nome :: String} deriving Show

    verSalario :: Pessoa -> Double
    verSalario (Pessoa Estagiario _) = 1500
    verSalario (Pessoa Programador _) = 5750.15
    verSalario (Pessoa Coordenador _) = 8000
    verSalario (Pessoa Gerente _) = 10807.20

    verFolha :: Pessoa -> String
    verFolha p = "{nome: \"" ++ nome p ++ "\", cargo: \"" ++ show (cargo p) ++ "\", salario: " ++ show (verSalario p) ++ "}"

    promover :: Pessoa -> Pessoa
    promover (Pessoa Estagiario n) = Pessoa Programador n
    promover (Pessoa Programador n) = Pessoa Coordenador n
    promover (Pessoa Coordenador n) = Pessoa Gerente n
    promover (Pessoa _ n) = Pessoa Gerente n

    contratarInicial :: String -> Pessoa
    contratarInicial = Pessoa Estagiario

    mediaSalarial :: [Pessoa] -> Double
    mediaSalarial ps = foldl calculo 0 ps / fromIntegral (length ps)
        where
            calculo salario pessoa = salario + verSalario pessoa
    
    contratarVariosEstag :: [String] -> [Pessoa]
    contratarVariosEstag = map contratarInicial

    rotinaPromocao :: Pessoa -> String
    rotinaPromocao p = p |> promover |> verFolha
