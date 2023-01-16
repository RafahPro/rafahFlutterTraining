//Lists in Dart

void main() {
  List names = ['Ahmed', 'Ali', 'Mohamed', 'Hassan'];
  print(names);

  //List length
  print(names.length);

  //List add
  names.add('Hossam');
  print(names);

  //List insert
  names.insert(1, 'Khaled');
  print(names);

  //List remove
  names.remove('Khaled');
  print(names);

  //List remove at
  names.removeAt(1);

  //List remove last
  names.removeLast();
  print(names);

  //List contains
  print(names.contains('Ahmed'));

  //List index of
  print(names.indexOf('Ahmed'));

  //List last index of
  print(names.lastIndexOf('Ahmed'));

  //List first
  print(names.first);

  //List last
  print(names.last);

  //List to set
  Set namesSet = names.toSet();
  print(namesSet);

  //List to map
  Map namesMap = names.asMap();
  print(namesMap);

  //List sort
  names.sort();
  print(names);

  //List join
  String namesString = names.join(',');
  print(namesString);

  //List split
  List namesList = namesString.split(',');
  print(namesList);

  //List clear
  names.clear();

//List of List

  List names2 = [
    'Ahmed',
    'Ali',
    ['Amjad', 'Khalil'],
    'Mohamed',
    'Hassan'
  ];

  print(names2[2][1]);
}
