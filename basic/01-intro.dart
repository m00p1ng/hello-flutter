void main() {
  print('hello world');

  String name = 'mooping';
  int age = 24;
  double height = 1.23;
  bool likesDart = true;
  print(name);
  print(age);
  print(height);
  print(likesDart);

  print("My name is " + name);
  print("My name is $name");
  print("Age: ${age + 1}");

  print('This is a short sentence.\n'
      'This is a longer sentence. I dare say\n');

  print("""
    This is a short sentence.
    This is a longer sentence. I dare say
  """);

  String title = 'Dart course';
  print(title.toUpperCase());

  String livePizza = "I love pizza";
  print(livePizza.contains('pizza'));

  String lovePasta = livePizza.replaceAll('pizza', 'pasta');
  print(lovePasta);

  int age2 = 35;
  String ageString = age2.toString();
  double height2 = 1.23;
  String heightString = height2.toStringAsFixed(1);
  print(ageString);
  print(heightString);

  String ratingString = '4.2';
  double rating = double.parse(ratingString);
  print(rating);

  int x = 1;
  x++;
  print(x);
}
