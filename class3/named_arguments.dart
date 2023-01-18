//Named arguments

void main() {
  printCustomerDiscount(name: 'Ahmed', discount: 40);

  //Check the output
  printCustomerDiscount(discount: 50, name: 'Ali');

  //Check the output
  // printCustomerDiscount(name: 'Ali');
}

//void printCustomerDiscount({ String name='Ali',  int discount=50}) {
// void printCustomerDiscount({required String name,  int discount=20}) {

void printCustomerDiscount({required String name, required int discount}) {
  if (discount >= 60) {
    print('$name You will Get 70% discount');
  } else if (discount >= 50) {
    print('$name You will Get 50% discount');
  } else {
    print('$name You will Get 10% discount');
  }
}
