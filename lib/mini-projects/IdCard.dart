import "package:flutter/material.dart";

class IdCard extends StatelessWidget {
  final String imgUrl =
      "https://images.unsplash.com/photo-1624635805368-77cf55ad0014?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80";
  const IdCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                maxRadius: 70.0,
                backgroundImage: NetworkImage(imgUrl),
                backgroundColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.verified_user,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Vitor Manthay",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              width: 60,
              color: Colors.amber,
            ),
            Card(
              shadowColor: Colors.red,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey[100],
                child: Text(
                  "\"Faliure Premits No alibis\"",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Kufam'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Languages Lerned",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              width: 120,
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
              width: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    color: Colors.yellow[200],
                    child: Text("C++"),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    color: Colors.yellow[200],
                    child: Text("Python"),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    color: Colors.yellow[200],
                    child: Text("Dart"),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    color: Colors.yellow[200],
                    child: Text("JavaScript"),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    color: Colors.blue[200],
                    child: Text(
                      "TypeScript",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Text(
              "Contact Info",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              width: 120,
              color: Colors.black,
            ),
            Row(
              children: [
                Expanded(child: Icon(Icons.contact_phone)),
                Expanded(child: Text("912-830-6719"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Icon(
                  Icons.email,
                )),
                Expanded(child: Text("avvinashjha@gmail.com"))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.white,
              child: Text("Made By Avinash Jha. 2021-June-27"),
            )
          ],
        ),
      ),
    );
  }
}
