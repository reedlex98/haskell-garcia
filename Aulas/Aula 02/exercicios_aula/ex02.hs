module Ex02 where
    data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday
        deriving (Enum, Ord, Eq, Show)
    data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado
        deriving (Enum, Ord, Eq, Show)
    
    translation :: Dia -> Day
    translation Domingo = Sunday
    translation Segunda = Monday
    translation Terca = Tuesday
    translation Quarta = Wednesday
    translation Quinta = Thursday
    translation Sexta = Friday
    translation Sabado = Saturday