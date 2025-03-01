void main() {
  // operator aritmatika
  var a = 10;
  var b = 5;

  print("operator aritmatika");
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b);
  print(a % b);

  // operator penugasan
  var preIncrement = 1;
  var postIncrement = 1;
  var preDecrement = 1;
  var postDecrement = 1;

  print("operator penugasan");
  print(++preIncrement);
  postIncrement++;
  print(postIncrement);
  print(--preDecrement);
  postDecrement--;
  print(postDecrement);
}
