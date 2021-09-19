import Data.List
import System.IO

-- Comments
{-
 - Multi-line comment
 -}

-- Types
maxInt = maxBound :: Int
minInt = minBound :: Int
bigFloat = 3.999999999 + 0.0000000005

always5 :: Int
always5 = 5

-- Math
sumOfNums = sum [1..1000]

modEx = mod 5 4
modEx2 = 5 `mod` 4 -- infix

negNumEx = 5 + (-4)

num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilVal = ceiling 9.999
floorVal = floor 9.999

trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

-- 
{-
 - :t - find out type
 - e.g. truncate :: (RealFrac a, Integral b) => a -> b
 - left: data type, right: input -> output
 -}

primeNos = [3,5,7,11]
morePrime = primeNos ++ [13,17,19,23,29]
favNums = 2 : 7 : 21 : 66 : []
multList = [[3,5,7], [11,13,17]]
morePrimes2 = 2 : morePrime
lenPrime = length morePrime
revPrime = reverse morePrimes2
isPrimeListEmpty = null morePrimes2
secondPrime = morePrimes2 !! 1
firstPrime = head morePrimes2
lastPrime = last morePrimes2
primeInit = init morePrimes2
first3Primes = take 3 morePrimes2
removePrimes = drop 3 morePrimes2
is7InPrimes =  7 `elem` morePrimes2
maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2

newList = [2,3,5]
prodPrimes = product newList
zeroToTen = [0..10]
evenList = [2,4..20]
letterList = ['A','C'..'Z']
infinPow10 = [10,20..]
many2s = take 10 (repeat 2)
many3s = replicate 10 3
cycleList = take 10 (cycle [1..5])
listTimes2 = [x * 2 | x <- [1..10]]
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]
divideBy9n13 = [x | x <- [1..500], x `mod` 13 == 0, mod x 9 == 0]
sortedList = sort [9,1,8,3,4,7,6]
sumOfLists = zipWith (+) [1..5] [6..10]
listBiggerThan5 = filter (>5) morePrime
evensUpTo20 = takeWhile (<= 20) [2,4..]
