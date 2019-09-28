module None where

data ListaOrd a
  = a :?: (ListaOrd a)
  | Nulo
  deriving (Show)

toList :: (Ord a) => ListaOrd a -> [a]
toList Nulo                = []
toList (daLista :?: Nulo)  = [daLista]
toList (daLista :?: lista) = daLista : toList lista

inserir :: (Ord a) => a -> ListaOrd a -> ListaOrd a
inserir elemento Nulo = elemento :?: Nulo
inserir elemento (daLista :?: lista)
  | elemento > daLista = daLista :?: inserir elemento lista
  | otherwise = elemento :?: inserir daLista lista

remover :: (Eq a) => a -> ListaOrd a -> ListaOrd a
remover elemento (daLista :?: Nulo)
  | elemento == daLista = Nulo
  | otherwise = daLista :?: Nulo
remover elemento (daLista :?: lista)
  | elemento == daLista = remover elemento lista
  | otherwise = daLista :?: remover elemento lista

tamanho :: ListaOrd a -> Int
tamanho (daLista :?: Nulo)  = 1
tamanho (daLista :?: lista) = 1 + tamanho lista
