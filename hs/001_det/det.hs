det :: (Num a) => [[a]] -> a
det [[x]] = x
det (top:lst) =
    sum [det [let (a, b) = splitAt idx row in a ++ tail b | row <- lst]
         * elt * if even idx then 1 else -1
         | (idx, elt) <- zip [0..] top]

main = do
    contents <- getContents
    putStrLn . show . (det :: [[Int]] -> Int) .
        map (map read . words) $ lines contents
