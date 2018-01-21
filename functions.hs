----------------------------------------
-- (1) Function: Single Param
-- take Int, return Int
----------------------------------------
-- function is called "f"
-- our one argument is called "a"
f :: Int -> Int
f a = a
-- f 1
-- 1


----------------------------------------
-- (2) Function: Single Param
-- take Int, return String
----------------------------------------
ff :: Int -> String
ff a = "HELLO"
-- ff 1
-- "HELLO"

----------------------------------------
-- (3) Function: Two Params
-- take 2 Ints, and add them
----------------------------------------
add :: Int -> Int -> Int
add a b = a + b

----------------------------------------
-- (4) Function: Two Params
-- same as (3), but written using a LAMBDA
----------------------------------------
add' :: Int -> Int -> Int
add' =
  \a b -> a + b

{- not like this

hmm :: Int -> Int -> Int
hmm a b =
  \a b -> a + b

-}

----------------------------------------
-- (5) Function: Two Params
-- same as (4), but written using SINGLE ARGUMENT lambdas
----------------------------------------
add'' :: Int -> Int -> Int
add'' =
  \a ->
    \b -> a + b
-- this is because this:
-- add 2 3
--     ^ ^
--     a b
-- 5
----
-- is the same as this:
-- (add 2) 3
--      ^  ^
--      a  b
--
-- and we can use parens in a function definition:
-- (add'' a) b = a + b

----------------------------------------
-- MORE
----------------------------------------

returnInt :: Int -> Int
returnInt a = a

double :: Int -> Int
double a = 2 * a

ignoreFuncParam :: (Int -> Int) -> Int -> Int
ignoreFuncParam =
  \f a -> a

useFuncParam :: (Int -> Int) -> Int -> Int
useFuncParam =
  \f a -> f a

-- written using single argument lambdas
useFuncParam' :: (Int -> Int) -> Int -> Int
useFuncParam' =
  \f ->
    \a -> f a
----
-- useFuncParam' double 2
-- 4
----
-- is the same as:
-- (useFuncParam' double) 2
-- 4

----------------------------------------
-- Pattern matching
----------------------------------------
lucky :: Int -> String

lucky 7 = "LUCKY"
lucky a = "NUP"

lucky' :: Int -> String
lucky' =
  \a -> case a of
    7 -> "LUCKY"
    _ -> "NUP"
