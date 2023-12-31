import 'dart:io';
import 'dart:math';

void main() {
  // Q 1
  print('Enter a number');
  var number = int.parse(stdin.readLineSync()!);
  print(isPrimeNumber(number));

  // Q 2
  print('Enter a word');
  var middleCharacter = getMiddleCharacter(stdin.readLineSync()!);
  print(middleCharacter);

  // Q3
  print('Enter a radius to calculate the area of circle');
  var area = calculateArea(double.parse(stdin.readLineSync()!));
  print(area);

  // Q4
  print("Enter a phrase");
  var wordsNumber = getWordsNumber(stdin.readLineSync()!);
  print(wordsNumber);

  //Q 5
  useCalculator();

  // Q6
  print('Enter a new password');
  var isValidPass = isValidPassword(stdin.readLineSync()!);
  if (isValidPass) {
    print("It's valid pass");
  }else {
    print("It's NOT a valid pass");
  }

  // Q 7
  var employee1 = Employee();
  employee1.name = 'Yasmin';
  employee1.jobTitle = 'Graphic Designer';
  employee1.salary = 4000;
  employee1.display();

  var employee2 = Employee();
  employee2.name = 'Mohamed';
  employee2.jobTitle = 'Android Developer';
  employee2.salary = 4000;
  employee2.display();
}

// Q 1
bool isPrimeNumber(int number){
  if (number < 2) {
    return false;
  }

  for(int i = number - 1; i > 1; i--){
    if(number % i == 0){
      return false;
    }
  }

  return true;
}

// Q 2
String getMiddleCharacter(String text){
  var length = text.length;
  var isEven = length % 2 == 0;

  var middleCharacters = "";
  if(isEven) {
    var index = (length / 2).round();

    middleCharacters = text.substring(index - 1, index + 1);
  }else {
    var index = ((length - 1) / 2).round();

    middleCharacters = text[index];
  }

  return middleCharacters;
}

// Q 3
double calculateArea(double radius){
  var area = pow(radius, 2) * pi;
  return area;
}

// Q 4
int getWordsNumber(String phrase){
  var countOfSpaces = 0;
  for (int i = 0; i < phrase.length; i++) {
    var character = phrase[i];

    if (character == " ") {
      countOfSpaces++;
    }
  }

  return countOfSpaces + 1;

  // or
  /*var list = phrase.split(" ");
  return list.length;*/
}

// Q 5
void useCalculator(){
  print("Enter the first number");
  var firstNumber = int.parse(stdin.readLineSync()!);

  print("Enter the second number");
  var secondNumber = int.parse(stdin.readLineSync()!);

  print("Enter the operation");
  var operation = stdin.readLineSync()!;

  switch(operation) {
    case "+":
      print(firstNumber + secondNumber);
      break;
    case "-":
      print(firstNumber - secondNumber);
      break;
    case "/":
      print(firstNumber / secondNumber);
      break;
    case "*":
      print(firstNumber * secondNumber);
      break;
    default:
      print('Wrong operation');
      break;
  }
}

// Q 6
bool isValidPassword(String password){
  if(password.length < 8){
    return false;
  }

  var regex = RegExp("[^a-zA-Z0-9]");
  if (regex.hasMatch(password)) {
    return false;
  }

  return true;
}

// Q7
class Employee {

  String? name;
  String? jobTitle;
  int? salary;

  void display(){
    print('$name, $jobTitle, $salary');
  }

}
