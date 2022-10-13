--Ejercicio 1, average3Numbers.
average3Numbers :: (Floating a)=>a->a->a->a--recibimos valores flotantes, para permitir el recibir tambien numeros con decimales
average3Numbers x y z= (x+y+z)/3 -- realizamos la operacion para sacar el promedio y mostramos el resultado

--Ejercicio 2, Definir la función isLastDigit3 tal que (isLastDigit2 x) determina si el último dígito del
--número ‘x’ es 3.
isLastDigit3 :: Int -> Bool
isLastDigit3 x 
    |(mod x 10) == 3 = True
    |otherwise       = False 
--Ejercicio 3, Definir la función has3Digits tal que (has3Digits x) determina si el número ‘x’ tiene 3 dígitos.
has3Digits:: Int -> Bool
has3Digits x
    | x < 1000 && x > 99 = True
    |otherwise           = False
--Ejercicio 4, determina si el número ‘x’ es un número negativo.
isNegative:: Int -> Bool
isNegative x
    |x < 0 = True
    | otherwise = False    
--Ejercicio 5, Definir la función sum2Digits tal que (sum2Digit x) es la suma de los 2 dígitos que 
--componen al número ‘x’, donde ‘x’ es un número de 2 dígitos.
sum2Digits::(Integral a) => a -> a 
sum2Digits x 
    |x < 10 = error "Error menos de 2 digitos o negativo"
    | x > 99 = error "Numero mayor a 2 digitos"
    |otherwise  = (mod x 10) + (mod xNew 10)
    where
        xNew = div x 10
--Ejercicio 6, Definir la función even2Digits tal que (even2Digit x) determina si los 2 dígitos que
--componen al número ‘x’ son número pares, donde ‘x’ es un número de 2 dígitos.
even2Digits:: Int -> Bool
even2Digits x
    |x < 10 = error "Error menos de 2 digitos o negativo"
    |x > 99 = error "Numero mayor a 2 digitos"  
    | even xN1 && even xN2 = True
    |otherwise = False
    where
        xN1 = mod x 10
        xN2 = mod (div x 10) 10      
--Ejercicio 7, Definir la función isPrimeNumber tal que (isPrimeNumber x) determina si el número
-- ‘x’ es alguno de los primeros 8 números primos.
isPrimeNumber:: Int -> Bool
isPrimeNumber x = elem x [2,3,5,7,11,13,17,19]
--Ejercicio 8, Definir la función isEvenAndPrimeNumber tal que (isEvenAndPrimeNumber x) determina si el 
--número ‘x’ es alguno de los primeros 8 números primos, además si es un número par.
isEvenAndPrimeNumber::Int -> Bool
isEvenAndPrimeNumber x = isPrimeNumber x && even x 
--Ejercicio 9, Definir la función isMultiple tal que (isMultiple x y) determina si el número ‘x’ es
--múltiplo de del número ‘y’.
isMultiple:: (Integral a) => a -> a -> Bool
isMultiple x y = ((mod x y) == 0)
--Ejercicio 10, Definir la función isEqual2Digits tal que (isEqual2Digits x) determina si los 2 dígitos
--que componen al número ‘x’ son número iguales, donde ‘x’ es un número de 2 dígitos.
isEqual2Digits:: Int -> Bool
isEqual2Digits x 
    |x < 10 = error "Error menos de 2 digitos o negativo"
    |x > 99 = error "Numero mayor a 2 digitos"
    |otherwise = xN1 == xN2
        where
           xN1 = mod x 10
           xN2 = mod (div x 10) 10   
--Ejercicio 11, Definir la función higher tal que (higher x y z) determina el número mayor de 3 números ‘x’,’y’ y ‘z’
higher:: (Integral a) =>a->a->a->a
higher x y z 
    |x > y && x>z = x
    |y > x && y>z = y
    |z > x && z>y = z
--Ejercicio 12, Definir la función isEvenSum2Number tal que (isEvenSum2Number x y) determina si
--la suma entre el número x y el número y origina un número par.
isEvenSum2Number::(Integral a)=> a -> a->Bool
isEvenSum2Number x y = even (x+y)   
--Ejercicio 13, Definir la función sum2Digit2Number tal que (sum2Digit2Number x y ) es la suma de
--todos los dígitos de los números ‘x’ y ‘y’, siendo ‘x’ y ‘y’ número de 2 dígitos.
sum2Digit2Number:: (Integral a) => a->a->a
sum2Digit2Number x y 
    |x<10 = error "El primer dato ingresado no es de 2 digitos"
    |x>99 = error "El primer dato ingresado no es de 2 digitos"
    |y<10 = error "El segundo dato ingresado no es de 2 digitos"
    |y>99 = error "El segundo dato ingresado no es de 2 digitos"
    |otherwise = x1+x2+y1+y2
        where
           x2 = mod x 10
           x1= mod (div x 10) 10
           y2 = mod y 10
           y1 = mod (div y 10) 10  
--Ejercicio 14, Definir la función sum3Digits tal que (sum3Digits x) es la suma de los 3 dígitos que
--componen al número ‘x’, donde ‘x’ es un número de 3 dígitos.
sum3Digits:: (Integral a) => a -> a
sum3Digits x
    | x < 100 = error "numero menor a 3 digitos"
    | x > 999 = error "numero mayor a 3 digitos"
    | otherwise = xN1 + xN2 + xN3
        where
            xN1 = mod (div x 100) 100
            xN2 = mod (div x 10) 10 
            xN3 = mod x 10      
--Ejercicio 15, Definir la función equal3Digits tal que (equal3Digits x) determina si al menos dos de
--los tres dígitos de ‘x’ son iguales, donde ‘x es un número de 3 dígitos.’
equal3Digits:: Int -> Bool
equal3Digits num
    | num < 100 = error "numero menor a 3 digitos"
    | num > 999 = error "numero mayor a 3 digitos"
    | x == y = True
    | x == z = True
    | y == z = True
    |otherwise = False
        where
            x = mod (div num 100) 100
            y = mod (div num 10) 10 
            z = mod num 10
--Ejercicio 16,Definir la función positionHigher3Digits tal que (positionHigher3Digits x) determina en
--qué posición está el dígito mayor del número ‘x’, donde ‘x’ es un número de 3 dígitos.
positionHigher3Digits:: Int -> String
positionHigher3Digits num
    | num < 100 = error "numero menor a 3 digitos"
    | num > 999 = error "numero mayor a 3 digitos"  
    | x > y && x>z = "numero mayor en posicion 1"
    | y>x && y>z = "numero mayor en posicion 2" 
    | z>x && z>y = "numero mayor en posicion 3"
    |otherwise   = "Los numeros son iguales"
            where
            x = mod (div num 100) 100
            y = mod (div num 10) 10 
            z = mod num 10
--Ejercicio 17, Definir la función palindrome tal que (palindrome xs) determina si xs es palíndromo;
--es decir, es lo mismo xs de izquierda a derecha que de derecha a izquierda, donde
--xs es una lista. (puede utilizar el sistema de tipos Eq )
palindrome::(Eq a) =>[a] -> Bool
palindrome xs = xs == reverse xs
--Ejercicio 18, Definir la función safeDivision tal que (safeDivision x y) es la división de x/y,
--mostrando un error cuando ‘y’ es 0
safeDivision:: Float->Float->Float
safeDivision x y 
    |y==0 = error "No divisible entre cero"
    |otherwise = x/y
--Ejercicio 19, Definir la función xor tal que (xor x y), es el resultado de la operación lógica
--disyunción (x, y valores booleanos) Tabla de verdad xor
xor::Bool -> Bool -> Bool
xor x y = (x&&not(y)||not(x)&&y)
--Ejercicio 20, Definir la función distance tal que (distance x y) es la distancia existente entre 2
--puntos, siendo ‘x’ y ‘y’ coordenada de un plano cartesiano.
distance::(Floating a)=> (a,a)->(a,a)->a
distance (x1,y1) (x2,y2) = sqrt (((x2-x1)^2) + ((y2-y1)^2))


