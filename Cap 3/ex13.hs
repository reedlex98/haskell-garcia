module DecimoTerceiro where
    data Metros = Metros Int Double | MetragemInvalida deriving Show

    areaQuadrado :: Metros -> Metros
    areaQuadrado (Metros _ x) = Metros 2 (x*x)
    
    areaCubo :: Metros -> Metros
    areaCubo (Metros _ x) = Metros 3 (6 * (x*x)) 
    
    areaRet :: Metros -> Metros -> Metros
    areaRet (Metros _ x) (Metros _ y) = Metros 2 (x*y)


