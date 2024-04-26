void main(){
  //int is a data type where a programmer tells the computer he or she is using integers
  //example 
  int a, b;
   a = 10;
   b = 20;
  int sum = a + b;
  print(sum);

  //double use real number, is a data type with decimals, decimal values i mean
  //example
  double x = 15.3420;
  double y = 69.43024;
    double result = x * y;
     print(result);

  //string is a data type in dart used to represent a sequence of characters for example name, age, date etc.
  // implementation
  String name = "John kimathi";
   print("his name is: $name");

  //a list in dart just like many programming languanges like js it is used to store similar elements like ints values or names.
  List<int> values= [10, 20, 30];
  print(values);

  //map also store elements but values and their key pairs
  //example
  Map<String, int> workersId = {
    "Kimani": 34901,
    "kim": 5305,
    "Joseph": 2465
  };
  print(workersId);
}