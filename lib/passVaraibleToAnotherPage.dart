import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Activity1("This is from Home to page 01.")));
            },
            child: Text('Page 01')
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Activity2("This is from Home to page 02.")));
            },
            child: Text('Page 02')
          )
        ]
      ),
    );
  }
}

class Activity1 extends StatelessWidget {

  String msg;

  Activity1(
    this.msg,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Activity2("This is from Activity2 to page 02.")));
            },
            child: Text('Page 02')
          ),
        ]
      ),
    );
  }
}

class Activity2 extends StatelessWidget {

  String msg;

  Activity2(
    this.msg,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("02 Second Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Activity1("This is from Activity1 to page 01.")));
            },
            child: Text('Page 01')
          )
        ]
      ),
    );
  }
}