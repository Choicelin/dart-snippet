import 'package:flutter/material.dart';

void main() => runApp(new MyStatefulWidget());

class MyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyStatefulWidgetState();
  }
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {

  String text = "Click Me!";

  changeText() {
    if (text == "Click Me!") {
      setState(() {
        text = "Aha World!";
      });
    } else {
      setState(() {
        text = "Click Me!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Test",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Test"),
        ),
        body: new Center(
          child: new InkWell(
            child: new Text(text),
            onTap: () {
              this.changeText();
            },
          ),
        ),
      ),
    );
  }
}