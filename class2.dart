//Loops

void main() {
  //For loop
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  //While loop
  int i = 0;
  while (i < 10) {
    print(i);
    i++;
  }

  //Do while loop
  int j = 0;
  do {
    print(j);
    j++;
  } while (j < 10);

  //For each loop
  List<int> list = [1, 2, 3, 4, 5];
  for (int i in list) {
    print(i);
  }

  //Break and continue
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }

  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }

  //Nested loop
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      print("$i $j");
    }
  }
}
