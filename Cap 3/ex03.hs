module Terceiro where
    data Jogada = Pedra | Papel | Tesoura

    jogo :: Jogada -> Jogada -> String

    jogo Papel Pedra = "Jogador 1 Venceu!"
    jogo Pedra Tesoura = "Jogador 1 Venceu!"
    jogo Tesoura Papel = "Jogador 1 Venceu!"
    
    jogo Pedra Papel = "Jogador 2 Venceu!"
    jogo Tesoura Pedra = "Jogador 2 Venceu!"
    jogo Papel Tesoura = "Jogador 2 Venceu!"
    
    jogo _ _ = "Empate"