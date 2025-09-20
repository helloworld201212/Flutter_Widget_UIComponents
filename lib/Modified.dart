import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkbox Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool searchingChecked = false;
  bool sortingChecked = false;

  void _showSnack(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter - Checkbox Widget'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 350,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Algorithms',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(height: 30, thickness: 1),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Searching Algorithm Library',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      Checkbox(
                        value: searchingChecked,
                        activeColor: Colors.red,
                        onChanged: (val) {
                          setState(() => searchingChecked = val ?? false);
                          _showSnack(
                            searchingChecked
                                ? 'Searching enabled'
                                : 'Searching disabled',
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Sorting Algorithm Library',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      Checkbox(
                        value: sortingChecked,
                        activeColor: Colors.blue,
                        onChanged: (val) {
                          setState(() => sortingChecked = val ?? false);
                          _showSnack(
                            sortingChecked
                                ? 'Sorting enabled'
                                : 'Sorting disabled',
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Status: '
                    '${searchingChecked ? "Searching ON" : "Searching OFF"} | '
                    '${sortingChecked ? "Sorting ON" : "Sorting OFF"}',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
