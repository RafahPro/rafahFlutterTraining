//Positional arguments

void main() {
  printCustomerDiscount('Ahmed', 40);

  //Check the output
  printCustomerDiscount(50, 'Ali');
}

void printCustomerDiscount(String name, int discount) {
  if (discount >= 60) {
    print('$name You will Get 70% discount');
  } else if (discount >= 50) {
    print('$name You will Get 50% discount');
  } else {
    print('$name You will Get 10% discount');
  }
}
