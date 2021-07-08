import 'package:flutter/material.dart';
import 'package:test1/Components/TextInput.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  List<String> user = [];
  String value = "";
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 30,
              ),
              inputText(false, "Email", value, controller, user),
              SizedBox(
                height: 30,
              ),
              inputText(true, "Password", value, controller, user),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child:
                        ElevatedButton(onPressed: () {}, child: Text("Login")),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
