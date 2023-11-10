# flutter_animatedcontainer_widget

![image](https://github.com/luiscoco/flutter_animatedcontainer_widget/assets/32194879/2e041616-bcb1-4e8b-bdc7-a472d7239ee5)



![image](https://github.com/luiscoco/flutter_animatedcontainer_widget/assets/32194879/fbb8c055-ee80-4a83-b970-6f739298ba58)

```dart
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
```
