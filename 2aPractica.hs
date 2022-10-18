--Problema 1, Definir la función firstToEnd tal que (firstToEnd xs) es una 
--lista donde el primer elemento de xs, pasa a ser el último elemento de la nueva lista
firstToEnd :: (Ord a)=> [a]->[a]
firstToEnd []= error "lista Vacia"
firstToEnd [x] = error "1 solo elemento"
firstToEnd (x:xs) = xs ++ [x]

--Problema 2, Definir la función minAndMax tal que (minAndMax xs) es una lista con 
--únicamente 2 elementos (elemento mínimo de xs y elemento máximo de xs), donde xs es 
--una lista
minAndMax :: (Ord a)=> [a]->[a]
minAndMax []= error "lista Vacia"
minAndMax [x] = error "1 solo elemento"
minAndMax (xs)= [minimum xs, maximum xs]

--Problema 3, Definir la función minorsFirstElement tal que (minorsFirstElement xs) es 
--una lista con los elementos menores al primer elemento de xs, donde xs es una lista.
--(El primer elemento se ignora)
minorsFirstElement :: (Ord a)=> [a]->[a]
minorsFirstElement []= error "lista Vacia"
minorsFirstElement [x] = error "1 solo elemento"
minorsFirstElement (x:xs)= [n | n <- xs, x>n]

--Problema 4, Definir la función greaterOrEqualFirstElement tal que 
--(greaterOrEqualFirstElement xs) es una lista con los elementos mayores o iguales al 
--primer elemento de xs, donde xs es una lista.(El primer elemento se ignora)
greaterOrEqualFirstElement :: (Ord a)=> [a]->[a]
greaterOrEqualFirstElement []= error "lista Vacia"
greaterOrEqualFirstElement [x] = error "1 solo elemento"
greaterOrEqualFirstElement (x:xs)= [n | n <- xs, x<=n]

--Problema 5, Definir la función minorsToSumFirstAndSecondElem tal que 
--(minorsToSumFirstAndSecondElem xs) es una lista con los elementos menores a la suma 
--del primer y segundo elemento de xs (sin tomar en cuenta los primeros 2 elementos), 
--donde xs es una lista.
minorsToSumFirstAndSecondElem :: (Integral a)=> [a]->[a]
minorsToSumFirstAndSecondElem []= error "lista Vacia"
minorsToSumFirstAndSecondElem [x] = error "1 solo elemento"
minorsToSumFirstAndSecondElem [x,y] = error "solo 2 elementos"
minorsToSumFirstAndSecondElem (x:y:xs)= [n | n <- xs, (x+y) > n]


--Problema 6, Definir la función listSumDuplaToList tal que (listSumDuplaToList xs) 
--es una lista en la que cada elemento es la suma de los elementos de cada dupla, donde 
--xs es una lista de duplas.
listSumDuplaToList :: (Num a) => [(a,a)]->[a]
listSumDuplaToList [] = [] -- //corre error, mandando una excepcion
--listSumDuplaToList [x] = error "1 solo elemento"//por eso mejor sin excepcion
listSumDuplaToList ((x,y):xs) = (x+y) : listSumDuplaToList xs

--Problema 7, Definir la función listMultTripletaToList tal que (listMultTripletaToList xs) 
--es una lista en la que cada elemento es la multiplicación de los elementos de cada 
--tripleta, donde xs es una lista de tripletas.
listMultTripletaToList :: (Num a)=> [(a,a,a)]->[a]
listMultTripletaToList [] = []
listMultTripletaToList ((x1,y1,z1):xs) = (x1*y1*z1) : listMultTripletaToList xs

--Problema 8, Definir la función changeFstToSnd tal que (changeFstToSnd xs) es una lista en 
--donde los elementos de una dupla cambian de posición, donde xs es una lista de duplas.
changeFstToSnd :: (Num a)=>[(a,a)]->[(a,a)]
changeFstToSnd [] = []
changeFstToSnd ((x,y):xs) = (y,x):changeFstToSnd xs

--Problema 9, Definir la función sumVectors tal que (sumVectors xs) es un vector resultante 
--de la suma de los diferentes vectores de xs, donde xs es una lista de duplas
sumVectors :: (Integral a)=> [(a,a)]->(a,a)
sumVectors [(a,b)] = (a,b)
sumVectors ((x,y):xs) = (xSum+x,ySum+y)
    where
        (xSum,ySum)  = sumVectors xs

--Problema 10, Definir la función dividers tal que (dividers n) es una lista de los divisores
-- de n, donde n es un número.
dividers :: (Integral a)=> a -> [a]
dividers x = [n | n <- [1..x], (mod x n)==0]

--Problema 11, Definir la función primeNumbers tal que (primeNumbers n) es una lista con los
--números primos existentes de 1 a n, donde n es un número. Recuerda: un número primo tiene
-- únicamente 2 divisores 1 y el mismo número.
primeNumbers :: (Integral a)=> a -> [a]
primeNumbers x = [n | n <- [1..x],(length (dividers n))== 2]

--Problema 12, Definir la función infinitePrimeNumbers tal que (infinitePrimeNumbers) es una 
--lista infinita de los números primos.
infinitePrimeNumbers :: (Integral a) =>[a]
infinitePrimeNumbers = [n | n <- [1..],(length (dividers n))== 2]