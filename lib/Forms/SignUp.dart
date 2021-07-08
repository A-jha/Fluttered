import 'package:flutter/material.dart';
import 'package:test1/Components/TextInput.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List<String> user = [];
  String value = "";
  String value1 = "";
  String value2 = "";
  String value3 = "";
  String value4 = "";
  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();
  TextEditingController controller3 = new TextEditingController();
  TextEditingController controller4 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign-Up"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "Hi There",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 30,
                ),
                inputText(false, "Name", value, controller1, user),
                SizedBox(
                  height: 30,
                ),
                inputText(false, "Email", value1, controller2, user),
                SizedBox(
                  height: 30,
                ),
                inputText(true, "Password", value2, controller3, user),
                SizedBox(
                  height: 30,
                ),
                inputText(true, "Password", value3, controller4, user),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 30,
                ),
                inputLines(4, "Write a review", value, controller, user),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Submit")),
                      flex: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
