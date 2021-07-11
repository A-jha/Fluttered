import 'dart:ui';

import 'package:flutter/material.dart';

String globaltemp = "";

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input = "";
  double result = 0;
  int flag = 0;
  List<String> stack = [];
  InputNumbers nums = InputNumbers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text("</ Calculator />"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 33, 0, 0),
                height: 100,
                width: 600,
                color: Colors.black,
                child: Text(
                  "$input",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 33, 0, 0),
                height: 100,
                width: 600,
                color: Colors.black,
                child: Text(
                  "$result",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        setState(() {
                          input += nums.a.toString();
                        });

                        print(input);
                      },
                      child: Text("1"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        setState(() {
                          input += nums.b.toString();
                        });

                        print(input);
                      },
                      child: Text("2"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        setState(() {
                          input += nums.c.toString();
                        });

                        print(input);
                      },
                      child: Text("3"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        setState(() {
                          input += nums.d.toString();
                        });

                        print(input);
                      },
                      child: Text("4"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        setState(() {
                          input += nums.e.toString();
                        });

                        print(input);
                      },
                      child: Text("5"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        setState(() {
                          input += nums.f.toString();
                        });

                        print(input);
                      },
                      child: Text("6"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        setState(() {
                          input += nums.g.toString();
                        });

                        print(input);
                      },
                      child: Text("7"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        setState(() {
                          input += nums.h.toString();
                        });

                        print(input);
                      },
                      child: Text("8"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        setState(() {
                          input += nums.i.toString();
                        });

                        print(input);
                      },
                      child: Text("9"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        if (input != "")
                          setState(() {
                            input += nums.j.toString();
                          });
                        print(input);
                      },
                      child: Text("0"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        if(input!="" && input !="+"){
                          push(stack, input);

                        }
                        input ="";
                        input+= "+";
                        if(isValid(stack)) {
                          push(stack, input);
                        }else{
                          pop(stack);
                          push(stack, input);
                        }
                        input="";
                        print(stack);
                      },
                      child: Text("+"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        if(input!="" && input !="-"){
                          push(stack, input);

                        }
                        input ="";
                        input+= "-";
                        if(isValid(stack)) {
                          push(stack, input);
                        }else{
                          pop(stack);
                          push(stack, input);
                        }
                        input="";
                        print(stack);
                      },
                      child: Text("-"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        if(input!="" && input !="÷"){
                          push(stack, input);
                        }
                        input ="";
                        input+= "÷";
                        if(isValid(stack)) {
                          push(stack, input);
                        }else{
                          pop(stack);
                          push(stack, input);
                        }
                        input = "";
                        print(stack);
                      },
                      child: Text("÷"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        if(input!="" && input !="*"){
                          push(stack, input);
                        }
                        input ="";
                        input+= "*";
                        if(isValid(stack)) {
                          push(stack, input);
                        }else{
                          pop(stack);
                          push(stack, input);
                        }
                        input="";
                        print(stack);
                      },
                      child: Text("*"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        if(input!="" && input !="%"){
                          push(stack, input);
                        }
                        input ="";
                        input+= "%";
                        if(isValid(stack)) {
                          push(stack, input);
                        }else{
                          pop(stack);
                          push(stack, input);
                        }
                        input="";
                        print(stack);
                      },
                      child: Text("%"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(

                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        if(input!="" && input !="="){
                          push(stack, input);
                        }
                        print(stack);
                        input="";
                       setState(() {
                         result = calculate(stack);
                       });
                       print(result);
                      },
                      child: Text("="),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 1,
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40)),
                      onPressed: () {
                        stack = [];
                        flag = 0;
                        setState(() {
                          input="";
                        });
                        result = 0;
                      },
                      child: Text("C"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class InputNumbers {
  int a;
  int b;
  int c;
  int d;
  int e;
  int f;
  int g;
  int h;
  int i;
  int j;

  InputNumbers(
      {this.a = 1,
      this.b = 2,
      this.c = 3,
      this.d = 4,
      this.e = 5,
      this.f = 6,
      this.g = 7,
      this.h = 8,
      this.i = 9,
      this.j = 0});
}

// ignore: non_constant_identifier_names
// Widget CustomBox({String a = "1", color = Colors.amber}) {
//   return Expanded(
//     child: Container(
//       color: color,
//       margin: EdgeInsets.all(1),
//       padding: EdgeInsets.all(30),
//       child: Text(
//         "$a",
//         style: TextStyle(
//           fontSize: 30,
//         ),
//         textAlign: TextAlign.end,
//       ),
//     ),
//     flex: 1,
//   );
// }

// class InputTemp {
//   String a;
//   String b;
//   String c;
//   String d;
//   String e;
//   String f;
//   String g;
//   String h;
//   String i;
//   String j;

//   InputTemp(
//       {this.a = "",
//       this.b = "",
//       this.c = "",
//       this.d = "",
//       this.e = "",
//       this.f = "",
//       this.g = "",
//       this.h = "",
//       this.i = "",
//       this.j = ""});
// }

void push(List<String> l, String item) {
  l.add(item);
}

String pop(List<String> l) {
  String temp = l.last;
  l.removeLast();
  return temp;
}

bool isValid( List<String> l){
  String item = l.last;
  if(item == "+" || item == "-" || item == "*" || item == "÷" || item== "%" || item == "="){
    return false;
  }else{
    return true;
  }
}
int length (List<String>l){
  int i=0;
  String temp = l.last;
  while(l[i]== temp){
    i++;
  }
  return i;
}
double calculate(List<String>l) {
  double b = 0;
  int x= length(l);
  while(x>1){
    x--;
  double temp2 = double.parse(l[0]) ;
  String ch = l[1];

  double temp1 = double.parse(l[2]);
  b = temp2;
  l.removeAt(0);
  l.removeAt(1);
  switch (ch) {
    case "+":

      l.first =  (temp2 + temp1).toString();
      break;
    case "-":
      b = temp2 - temp1;
      l.first =  (temp2 - temp1).toString();
      break;
    case "*":
        b = temp2 * temp1;
      l.first =  (temp2 * temp1).toString();
      break;
    case "÷":
      b = temp2 / temp1;
      l.first =  (temp2 / temp1).toString();
      break;
    case "%":
      b = temp2 % temp1;
      l.first =  (temp2 % temp1).toString();
      break;
    default :
      print("happy happy");
      break;
  }}
  return b;
}