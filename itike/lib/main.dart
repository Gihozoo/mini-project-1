import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'itike login',
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Sign up'),
            backgroundColor: Colors.pink.shade100),
        // ignore: prefer_const_constructors
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get numberController => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/images/logo.png'),
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Account setup',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              )),
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Username',
                  ))),
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                  controller: numberController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Phone Number',
                  ))),
          Container(
              height: 50,
              width: 5,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  child: Text('verification',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  color: Colors.pink.shade100)),
        ]));
  }
}
