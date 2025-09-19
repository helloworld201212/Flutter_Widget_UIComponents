import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Rainbow colors list (9 items)
  final List<Map<String, dynamic>> rainbowColors = [
    {"name": "Red", "color": Colors.red},
    {"name": "Orange", "color": Colors.orange},
    {"name": "Yellow", "color": Colors.yellow},
    {"name": "Green", "color": Colors.green},
    {"name": "Blue", "color": Colors.blue},
    {"name": "Indigo", "color": Colors.indigo},
    {"name": "Violet", "color": Colors.purple},
    {"name": "Black", "color": Colors.black},
    {"name": "Pink", "color": Colors.pink},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1, // square-shaped grids
        ),
        itemCount: rainbowColors.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: rainbowColors[index]["color"],
              borderRadius: BorderRadius.circular(12), // rounded corners
            ),
            child: Center(
              child: Text(
                rainbowColors[index]["name"],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 3,
                      color: Colors.black,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
