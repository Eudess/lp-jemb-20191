stringToList :: String -> [String]
stringToList []  = []
stringToList xxs@(x:xs)  | x == '\n' = stringToList xs
                    | otherwise = ys : stringToList rest
                      where (ys, rest) = break (== '\n') xxs

reverseList :: [a] -> [a]  
reverseList [] = []  
reverseList (x:xs) = reverseList xs ++ [x]

inverterPoema :: String -> [String]
inverterPoema x = reverseList . stringToList $ x

printListLines :: [String] -> IO()
printListLines [] = return ()
printListLines (x:xs) = do  putStrLn x
                            printListLines xs
