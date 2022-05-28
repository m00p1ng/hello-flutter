void main() {
  List<String> cities = ['London', 'Paris', 'Moscow'];
  print(cities.length);
  print(cities.isEmpty);
  print(cities.isNotEmpty);
  print(cities.first);

  cities.add('Tokyo');
  cities.insert(1, 'Mooping');
  cities.removeAt(2);
  print(cities.contains('Moscow'));
  print(cities.indexOf('Moscow'));
  cities.clear();

  print(cities);

  var cities2 = <String>['a', 'b', 'c'];
  print(cities2);

  var countries = {'a', 'b', 'c'};
  countries.elementAt(1);
  countries.add('d');

  print(countries);

  Map<String, dynamic> person = {
    'name': 'mooping',
    'age': 25,
    'height': 1.23,
  };

  print(person);
}
