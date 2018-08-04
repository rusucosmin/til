/*
  Newton's Method to compute sqrt(x):
    - start with an inital stimate y (doesn't matter as long as it's positive).
    - repeatedly improve the estimate by taking the mean of y and x / y.
*/

def abs(x: Double): Double =
  if (x >= 0) x else -x

def isGoodEnough(guess: Double, x: Double) =
  abs(guess * guess - x) < 0.00001

def improve(guess: Double, x: Double) =
  (guess + x / guess) / 2

def sqrtIter(guess: Double, x: Double): Double =
  if (isGoodEnough(guess, x)) guess
  else sqrtIter(improve(guess, x), x)

def sqrt(x: Double): Double =
  sqrtIter(1, x)

println(sqrt(2))


