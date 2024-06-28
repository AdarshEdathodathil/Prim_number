import 'dart:math';

void main() {
  int number = 102;

  bool isPrime = checkPrime(number);
  print("Is $number a prime number : $isPrime");

  int factorial = calculateFactorial(number);
  print("Factorial of $number is : $factorial");
}

bool checkPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

int calculateFactorial(int number) {
  if (number < 0) {
    throw ArgumentError("Negative numbers are not allowed.");
  }

  int result = 1;
  for (int i = 1; i <= number; i++) {
    result *= i;
  }
  return result;
}
