fibonacci :: Int -> Int
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n > 1 = fibonacci(n-1) + fibonacci(n-2)
            | n < 0 = error "Não Existe fibonacci de número negativo."

fatorial :: Int -> Int
fatorial n | n == 0  = 1
           | n > 0  = fatorial(n-1)*n
           | n < 0 = error "Não existe fatorial de número negativo."

fibonacciList :: Int -> [Int]
fibonacciList n | n < 0 = error "Não existe uma lista que contém némero de fibonacci negativo."
                | otherwise = map fibonacci [0..(n-1)]

remover :: Int -> [Int] -> [Int]
remover n [] = []
remover n l | n < 1 = error "Não é possível remover de uma posição menor que 1"
            | length l < n = error "Valor informado é maior que o tamanho da lista"
            | otherwise = take (n-1) l ++ drop n l

inserir :: Int -> Int -> [Int] -> [Int]
inserir x n [] = []
inserir x n l | n < 1 = error "Não é possível inserir em uma posição menor que 1"
            | length l + 1 < n = error "Valor informado é maior que o tamanho da lista"
            | otherwise = take (n-1) l ++ [x] ++ drop (n-1) l

aux1 :: [Int] -> [Int]
aux1 x  | length x == 0 = []
        | otherwise = filter odd x

aux2 :: [Int] -> [Int]
aux2 x | length x == 0 = []
        | otherwise = filter even x
        
quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let menorSort = quicksort [a | a <- xs, a <= x]  
        maiorSort = quicksort [a | a <- xs, a > x]  
    in  menorSort ++ [x] ++ maiorSort

separarImparPar :: [Int] -> ([Int], [Int])
separarImparPar x = (quicksort (aux1 x), quicksort (aux2 x))

ordenarImparPar :: [Int] -> [Int]
ordenarImparPar x = quicksort (aux1 x) ++ quicksort (aux2 x)