//Title:Project Euler Prob 2 - Even Fibonacci numbers
// Author:ShivamVerma
// Email:shivamthegreat.sv@gmail.com

// Each new term in the Fibonacci sequence is generated by adding the previous two terms.
// By starting with 1 and 2, the first 10 terms will be:

//                          1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

// By considering the terms in the Fibonacci sequence whose values do not exceed four million,
// find the sum of the even-valued terms.

int evenFibSum(int limit) {
  if (limit < 2) return 0;

  // Initialize first two even prime numbers
  // and their sum
  int ef1 = 0, ef2 = 2;
  int sum = ef1 + ef2;

  // calculating sum of even Fibonacci value
  while (ef2 <= limit) {
    // get next even value of Fibonacci sequence
    int ef3 = 4 * ef2 + ef1;

    // If we go beyond limit, we break loop
    if (ef3 > limit) break;

    // Move to next even number and update sum
    ef1 = ef2;
    ef2 = ef3;
    sum += ef2;
  }

  return sum;
}

//driver code
void main() {
  int limit = 4000000;
  print(evenFibSum(limit));
}
