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
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs List'),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.search), text: "Search"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
              Tab(icon: Icon(Icons.email), text: "Email"),
              Tab(icon: Icon(Icons.contact_mail), text: "Contact"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
              Tab(icon: Icon(Icons.access_alarm), text: "Alerm"),
              Tab(icon: Icon(Icons.account_balance), text: "Balance"),
            ]
          ),
        )
      ),
    );
  }
}