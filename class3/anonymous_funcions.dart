/*
All the functions you’ve seen previously such as main, 
sumNumbers are named functions,
which means, well, they have a name.

But not every function needs a name. 
If you remove the return type and the function name, 
then what you have left is an anonymous function

*/

void main(List<String> args) {
  // 1. Anonymous function
  var sumNumbers = (int a, int b) {
    return a + b;
  };

  int a = 10;
  int b = 20;
  int c = sumNumbers(a, b);
  print(c);
}

//2. Antoher Example
void main(List<String> args) {
  // Anonymous function
  var sumNumbers = (int a, int b) => a + b;

  int a = 10;
  int b = 20;
  int c = sumNumbers(a, b);
  print(c);
}

//3. Another Example
void main(List<String> args) {
  List name = ['Ahmed', 'Ali', 'Sayed'];

  // Anonymous function
  name.forEach((element) {
    print(element);
  });
}
