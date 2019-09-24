module Sexto where
    data Mes = Janeiro | Fevereiro | Março | Abril | Maio | Junho | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro deriving Show

    data Hemisferio = Norte | Sul

    data Estacao = Primavera | Verao | Outono | Inverno deriving Show

    checaFim :: Mes -> Int
    checaFim Janeiro = 31
    checaFim Fevereiro = 28
    checaFim Março = 31
    checaFim Abril = 30
    checaFim Maio = 31
    checaFim Junho = 30
    checaFim Julho = 31
    checaFim Agosto = 31
    checaFim Setembro = 30
    checaFim Outubro = 31
    checaFim Novembro = 30
    checaFim Dezembro = 31

    prox :: Mes -> Mes
    prox Janeiro = Fevereiro
    prox Fevereiro = Março
    prox Março = Abril
    prox Abril = Maio
    prox Maio = Junho
    prox Junho = Julho
    prox Julho = Agosto
    prox Agosto = Setembro
    prox Setembro = Outubro
    prox Outubro = Novembro
    prox Novembro = Dezembro
    prox Dezembro = Janeiro

    estacao :: Hemisferio -> Mes -> Estacao
    estacao Norte Março = Primavera
    estacao Norte Abril = Primavera
    estacao Norte Maio = Primavera
    estacao Norte Junho = Verao
    estacao Norte Julho = Verao
    estacao Norte Agosto = Verao
    estacao Norte Setembro = Outono
    estacao Norte Outubro = Outono
    estacao Norte Novembro = Outono
    estacao Norte Dezembro = Inverno
    estacao Norte Janeiro = Inverno
    estacao Norte Fevereiro = Inverno
    estacao Sul Março = Outono
    estacao Sul Abril = Outono
    estacao Sul Maio = Outono
    estacao Sul Junho = Inverno
    estacao Sul Julho = Inverno
    estacao Sul Agosto = Inverno
    estacao Sul Setembro = Primavera
    estacao Sul Outubro = Primavera
    estacao Sul Novembro = Primavera
    estacao Sul Dezembro = Verao
    estacao Sul Janeiro = Verao
    estacao Sul Fevereiro = Verao
    

    -- Hemisferio | Estacao | Mes Inicio | Mes Fim
    
    -- Norte      | Primavera | março | junho
    -- Sul      | Primavera | setembro | dezembro
    
    -- Norte      | Verao | junho | setembro
    -- Sul      | Verao | dezembro | março
    
    -- Norte      | Outono | setembro | dezembro
    -- Sul      | Outono | março | julho
    
    -- Norte      | Inverno | Dezembro | março
    -- Sul      | Inverno | junho | Setembro