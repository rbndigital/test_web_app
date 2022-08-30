import 'package:flutter/material.dart';
import 'package:test_web_app/router/route_generator.dart';
import 'package:test_web_app/ui/layout/main_layout_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Web App',
      initialRoute: '/dashboard',
      onGenerateRoute: RouteGenerator.generateRoute,
      builder: (_, child) {
        return MainLayoutPage(
            child: child ?? const CircularProgressIndicator());
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test Web App'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
