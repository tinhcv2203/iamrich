import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiamondPage(),
    );
  }
}

class DiamondPage extends StatefulWidget {
  @override
  _DiamondPageState createState() => _DiamondPageState();
}

class _DiamondPageState extends State<DiamondPage> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I am Rich App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isClicked = true;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/diamond.png', // Đường dẫn tới ảnh
                width: 100,
                height: 100,
              ),
              SizedBox(height: 20),
              if (_isClicked)
                Text(
                  'I am RICH',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
