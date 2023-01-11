# The function maximum' takes a list of things that can be ordered (i.e. (Ord a) => [a]) and returns an element of the type
maximum' :: (Ord a) => [a] => a
# base case 1 (empty list)
maximum' [] = error "It's an empty list."
# base case 2 (one elm in the list)
maximum' [x] = x
# recursively finds the maximum elm in the list
maximum' (x:xs)
    | x > MaxTail = x
    | otherwise = MaxTail
    where maxTail = maximum' xs