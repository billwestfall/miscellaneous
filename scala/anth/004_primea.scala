object Primea {

val number = List(1)
  
def isPrime(number : Int) = {
  val sqrtOfNumber = math.sqrt(number).toInt
  val hasFactorsOtherThan1AndItself =
    (2 to sqrtOfNumber).exists { i => number % i == 0 }
  number > 1 && !hasFactorsOtherThan1AndItself
}

def primes(number : Int) : LazyList[Int] = {
  if(isPrime(number)) number #:: primes(number + 1) else primes(number + 1)
}
println(primes(1).take(10).toList)
}
