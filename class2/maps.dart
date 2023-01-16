void main() {
  Map person = {
    'name': 'Adham',
    'age': 15,
    'height': 1.75,
    'weight': 75,
    'married': false,
    'hobbies': ['Football', 'Reading', 'Programming'],
    'address': {
      'street': 'Main Street',
      'city': 'Rafah',
      'country': 'Palestine'
    }
  };

  print(person);
  print(person.keys);
  print(person.values);

  print(person.length);

  print(person.isEmpty);
  print(person.isNotEmpty);

  print(person['name']);
  print(person['age']);
  print(person['height']);
  print(person['weight']);
  print(person['married']);

  print(person['hobbies']);
  print(person['hobbies'][0]);
  print(person['hobbies'][1]);
  print(person['hobbies'][2]);

  print(person['address']);
  print(person['address']['street']);
  print(person['address']['city']);
  print(person['address']['country']);
}
