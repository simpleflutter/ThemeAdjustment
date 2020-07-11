import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme Demo'),
          actions: <Widget>[
            Switch(
              value: isDark,
              onChanged: (bool newValue) {
                setState(() {
                  isDark = newValue;
                });
              },
            )
          ],
        ),
        body: Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
