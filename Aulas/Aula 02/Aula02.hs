module Aula2 where

    -- Parte 1
    data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado
        deriving (Enum, Ord, Eq, Show)
    
    -- Dia => Tipo (Data Constructor)
    -- Domingo .. Sexta => Valores (Data Values)

    -- Pattern Matching 
    -- "Casamento de padrão"
    -- Desconstrói a variável de entrada expondo seu conteúdo
    -- Função parcial: função ao qual há casos do pattern matching nao tratados 
    
    agenda :: Dia -> String
    agenda Segunda = "Dia de estudar"
    agenda Quarta = "Dia de Haskell"
    agenda Quinta = "Dia de pre-sexta" 
    agenda Sexta = "Dia de maldade"
    agenda Sabado = "Dia de aula"
    agenda _ = "Nao importa" -- Necessario colocar esse default para completar o Pattern Matching

    -- 1) Fazer a função toDia que recebe um inteiro e retorna o dia correspondente a: 1 Domingo, 2 Segunda .. 7 Sabado

    -- 2) Criar um tipo Day (com os valores em ingles) e implementar a função a função traduzir que recebe um Dia e devolve o Day correspondente 

    -- Parte 2 (Value Constructor com campos)

    -- Record Syntax: Ato de nomear os campos
    -- Esses nomes sao funcao de projecao (na POO equivale-se aos getters)

    -- (Sem usar o Record Syntax) data Pessoa = Pessoa String Int Status deriving Show -- Agrupamento de atributos, possui um value construtor e dois atributos, um String e um Int
    
    data Pessoa = Pessoa { -- ()
        pessoaNome :: String,
        pessoaIdade :: Int,
        pessoaStatus :: Status
    } deriving Show

    data Status = Vivo | Morto deriving Show
    
    fazerAniversario :: Pessoa -> Pessoa
    fazerAniversario (Pessoa nome idade Vivo) = Pessoa nome (idade+1) Vivo
    -- fazerAniversario (Pessoa nome idade Morto) = Pessoa nome (idade) Morto
    fazerAniversario x = x

    fazAniversario :: Pessoa -> Pessoa
    fazAniversario x = Pessoa (pessoaNome x) ((pessoaIdade x) + 1) (pessoaStatus x)
