void main() {
  const age = 14;
  if (age < 16) {
    print('Junior ticket');
    print('Price is \$8');
  } else if (age >= 60) {
    print('Senior ticket');
    print('Price is \$6');
  } else {
    print('Regular ticket');
    print('Price is \$10');
  }
  print('Enjoy your visit');

  var i = 1;
  while (i <= 5) {
    print('x' * i);
    i++;
  }

  for (var j = 1; j <= 5; j++) {
    print('x' * j);
  }
}
