-- Listas
-- São Elementos agrupados , de mesmo tipo, tamanho variável e possivelmente infinito.
-- Funções:
-- head: retorna o primeiro elemento de uma lista, não percorre os outros. Se a lista for vazia, retorna uma Exception
-- last: retorna o ultimo elemento de uma lista. Se a lista for vazia, retorna uma Exception
-- reverse: reverte elementos da lista
-- ls!!i : retorna o (i+1) elemento de ls
-- elemento:lista : insere elemento na lista, no inicio dela
-- take n ls -> retorna n elementos de ls
-- drop n ls -> elimina n elementos de ls

module Segundo where

dropUlt :: String -> Int -> String
dropUlt ls n = reverse(drop n (reverse ls))

primUlt :: String -> String
primUlt ls = (head ls) : (last ls) : []