main = do
    contents <- getContents
    putStr $ unlines $ foldl (zipWith (\x y -> x ++ [y])) (repeat []) $ lines contents
