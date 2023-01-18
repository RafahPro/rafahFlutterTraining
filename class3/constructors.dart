class MobilePhone {
  String model;
  double screenSize;
  int price;

  MobilePhone(this.model, this.screenSize, this.price);
}

void main() {
  MobilePhone mobilePhone = MobilePhone('Samsung', 5.5, 1000);
  print(mobilePhone.model);
  print(mobilePhone.screenSize);
  print(mobilePhone.price);
}
