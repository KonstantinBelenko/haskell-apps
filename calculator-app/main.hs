import Control.Monad (when)

main = do
    n1 <- promptNumber "Enter first number:"
    operator <- promptOperator "Enter operator:"
    n2 <- promptNumber "Enter second number:"
    
    let answer = calculate n1 operator n2
    
    case answer of
        Just x -> putStrLn $ "Result: " ++ show x
        Nothing -> putStrLn $ "Can't divide by 0"
        
    putStrLn "Do another calculation? (y/n)"
    cont <- getLine
    when (cont == "y") main

-- | Calculates the result based on the given operator and operands.
-- Returns 'Nothing' if the operation is invalid (e.g., division by zero).
calculate :: Float -> Char -> Float -> Maybe Float
calculate n1 op n2 =
    case op of
        '+' -> Just $ n1 + n2
        '-' -> Just $ n1 - n2
        '*' -> Just $ n1 * n2
        '/' -> if n2 == 0 then Nothing else Just $ n1 / n2
        _ -> Nothing

promptNumber :: String -> IO Float
promptNumber prompt = do
    putStrLn prompt
    input <- getLine
    case reads input :: [(Float, String)] of
            [(number, "")] -> return number
            _ -> putStrLn "Invalid number, please try again: " >> promptNumber prompt
            
promptOperator :: String -> IO Char
promptOperator prompt = do
    putStrLn prompt
    operator <- getChar
    _ <- getLine
    return operator
