import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAnimatedContainerApp(),
    );
  }
}

class MyAnimatedContainerApp extends StatefulWidget {
  @override
  _MyAnimatedContainerAppState createState() => _MyAnimatedContainerAppState();
}

class _MyAnimatedContainerAppState extends State<MyAnimatedContainerApp> {
  bool _isExpanded = false;

  void _toggleContainer() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleContainer,
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _isExpanded ? 200.0 : 100.0,
            height: _isExpanded ? 200.0 : 100.0,
            color: _isExpanded ? Colors.blue : Colors.red,
            child: Center(
              child: Text(
                _isExpanded ? 'Expanded' : 'Collapsed',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
