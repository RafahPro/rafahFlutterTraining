void main() {
  String fname = 'Ahmed';
  String lname = 'Ali';

  //String length
  print(fname.length);

  //Stirng Empty
  print(fname.isEmpty);

  //String not Empty
  print(fname.isNotEmpty);

  //String concat
  String fullName = fname + ' ' + lname;
  print(fullName);

  //String interpolation
  String fullName2 = '$fname $lname';
  print(fullName2);

  //String interpolation with expression
  String fullName3 = '${fname.toUpperCase()} $lname';
  print(fullName3);

  //String interpolation with expression
  String fullName4 = '${fname.toUpperCase()} ${lname.toUpperCase()}';
  print(fullName4);

  //String interpolation with expression
  String fullName5 = '${fname.toLowerCase()} ${lname.toLowerCase()}';
  print(fullName5);

  //String length
  print(fname.length);

  //String contains
  print(fname.contains('Ah'));

  //String starts with
  print(fname.startsWith('Ah'));

  //String ends with
  print(fname.endsWith('ed'));

  //String index of
  print(fname.indexOf('h'));

  //String replace
  print(fname.replaceFirst('Ah', 'Moh'));

  //String replace all
  print(fname.replaceAll('Ah', 'Moh'));

  //String to upper case
  print(fname.toUpperCase());

  //String to lower case
  print(fname.toLowerCase());

  //String trim
  String name = '  Ahmed  ';
  print(name.trim());

  //String split
  String names = 'Ahmed,Ali,Mohamed';
  List<String> namesList = names.split(',');
  print(namesList);

  //String to int
  String one = '1';
  int oneInt = int.parse(one);
  print(oneInt);

  //String to double
  String onePointOne = '1.1';
  double oneDouble = double.parse(onePointOne);
  print(oneDouble);

  //String to list
  String fnames = 'Ahmed,Ali,Mohamed';
  List<String> fnamesList = names.split(',');
  print(fnamesList);

  //String to date
  String date = '2020-10-10';
  DateTime dateTime = DateTime.parse(date);
  print(dateTime);
}
