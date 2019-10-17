module AulaOito where

    -- Def: Uma mônada em uma categoria C
    -- Eh a tripla (m , return, join), Onde
    --  - m EH UM FUNTOR
    --  return :: a -> m a TRANSF. NATURAL
    --  join :: m (m a) -> m a TRANSF. NATURAL

    -- Satisfazendo:
        -- a) RETURN EH O ELEMENTO NEUTRO
        -- b) ASSOCIATIVIDADE: fmap join . join = join . join
    
    -- UMA MONADA EH APENAS UM MONOIDE NA CATEGORIA DOS (ENDO)FUNTORES;

    class Monoid m where
        mempty :: m
        mappend :: m -> m -> m