import 'package:flutter/material.dart';
import 'package:myspace_redux/myspace_redux.dart';

void main() {
  runApp(AppStoreProvider(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MySpace Redux Example'),
        ),
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
