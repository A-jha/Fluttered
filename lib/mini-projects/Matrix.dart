import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Matrix extends StatefulWidget {
  @override
  _MatrixState createState() => _MatrixState();
}

class _MatrixState extends State<Matrix> {
  int totalSum = 0;
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  @override
  void dispose() {
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            decoration: new InputDecoration(labelText: "Enter  First Number"),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            controller: myController1,
          ),
          TextField(
            decoration: new InputDecoration(labelText: "Enter Second Number"),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            controller: myController2,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Text("$totalSum"),
          ),
          ElevatedButton(
              onPressed: () {
                // sum(myController1.text, myController2.text);
                setState(() {
                  totalSum = int.parse(myController1.text) +
                      int.parse(myController2.text);
                });
              },
              child: Text("Get Product")),
        ],
      ),
    );
  }
}
