class MobilePhone {
  String model;
  double screenSize;
  int price;

  MobilePhone(this.model, this.screenSize, this.price);

// Method to print the details of the mobile phone
  printInfo() {
    print('Model: $model');
    print('Screen Size: $screenSize');
    print('Price: $price');
  }
}

void main() {
  MobilePhone mobilePhone = MobilePhone('Samsung', 5.5, 1000);
  print(mobilePhone.model);
  print(mobilePhone.screenSize);
  print(mobilePhone.price);

  //Calling the method

  mobilePhone.printInfo();
}
