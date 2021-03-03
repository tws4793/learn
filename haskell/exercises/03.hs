-- Beginning Functions
doubleMe x = x + x

doubleUs x y = (x * 2) + (y * 2)

doubleSmallNumber x = if x > 100
  then x
  else x * 2

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

printInc n = print plusTwo
    where plusTwo = n + 2

{-|
 - Lists
 -
 - head, tail, last, init
 - length, null, reverse, take, drop
 - maximum, minimum, sum, product
 - elem
 - cycle, repeat
 - 
 -}
-- Like python c[x]
getCharacter c x = c !! x

-- List Comprehension
getEvenOdd = [x * 2 | x <- [1..10]]

{-|
 -
 -}
lucky :: (Integral a) => a -> String
lucky 8 = "Lucky number 8!"
lucky x = "Sorry not lucky number!"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
-- addVectors a b = (fst a + fst b, snd a + snd b)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise   = "You're a whale, congratulations!"
  where bmi = weight / height ^ 2

multiply :: (Num a) => a -> a -> a
multiply x y = x * y

{-
 - 2 ways to write factorial
 -}
fact :: Integer -> Integer
fact n
    | n == 0 = 1
    | n /= 0 = n * fact (n - 1)

fact2 :: Int -> Int
fact2 0 = 1
fact2 n = n * fact2 (n - 1)

