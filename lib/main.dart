import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Stateless
// Material App
// Scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Flutter App"),
          leading: Icon(Icons.menu),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            SizedBox(height: 10),
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.search)),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value) {},
          selectedIndex: 0,
        ),
      ),
    );
  }
}
