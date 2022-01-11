import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Change Page",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
          child: RaisedButton(
              child: Text("Go to the Second page"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SecondPage()));
              })),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Go to the First page"),
            onPressed: () {
              Navigator.pop(ctx);
            }),
      ),
    );
  }
}
