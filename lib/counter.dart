import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                "$num",
                style: TextStyle(
                  fontSize: 200,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        num--;
                      });
                    },
                    child: Text(
                      "<-",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        num++;
                      });
                    },
                    child: Text(
                      "->",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.pink,
    );
  }
}
