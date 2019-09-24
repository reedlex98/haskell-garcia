module Quinto where
    data Unidades = Inch | Yard | Foot

    converterMetros :: Unidades -> Double -> Double
    converterMetros Inch x = x * 0.0254
    converterMetros Yard x = x * 0.9144
    converterMetros Foot x = x * 0.3048
    converterMetros _ x = x

    converterImperial :: Unidades -> Double -> Double
    converterImperial Inch x = x / 0.0254
    converterImperial Yard x = x / 0.9144
    converterImperial Foot x = x / 0.3048
    converterImperial _ x = x
