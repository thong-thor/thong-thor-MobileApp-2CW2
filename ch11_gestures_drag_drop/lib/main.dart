import 'package:flutter/material.dart';
import 'buildGestureDetector.dart';
import 'buildDraggable.dart';
import 'buildDragTarget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestures && Drag and Drop'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const buildGestureDetector(),
              Divider(
                color: Colors.black,
                height: 44.0,
              ),
              const buildDraggable(),
              Divider(
                height: 40.0,
              ),
              const buidDragTarget(),
              Divider(
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
