// Objective
// Exception Handling : When normal flow of program  is disrupted and Application crashes

// 1. ON Clause
// 2. Catch Clause with Exception(e) object
// 3. Catch Clause with Exception(e) object and StackTrace Object
// 4. Finally Clause

void main() {
  print('CASE 1');
  // CASE 1: When you know the exception to be thrown, use ON Clause
  try {
    int result = 12 ~/ 0;
    print('The result is $result');
  } on UnsupportedError {
    print('Cannot divided by Zero');
  }

  print('');
  print('CASE 2');
  // CASE 2: When you do not know the exception use CATCH Clause
  try {
    int result = 12 ~/ 0;
    print('The result is $result');
  }
  // e will the object of our exception thrown
  catch (e) {
    print('The exception thrown is $e');
  }

  print('');
  print('CASE 3');
  // CASE 3: Using STACK TRACE to know the events occured before Exception was thrown
  try {
    int result = 12 ~/ 0;
    print('The result is $result');
  }
  // s will the STACT TRACE object it will help us know what happen before the exception occured
  catch (e, s) {
    print('The exception thrown is $e');
    print('STACK TRACE \n $s');
  }

  print('');
  print('CASE 4');
  // CASE4: Whether there is an Exception or not, FINALLY Clause is always Executed
  try {
    int result = 12 ~/ 0;
    print('The result is $result');
  } catch (e) {
    print('The exception thrown is $e');
  } finally {
    print('This is FINALLY Clause and is always executed');
  }
}
