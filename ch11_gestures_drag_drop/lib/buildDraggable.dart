import 'package:flutter/material.dart';

class buildDraggable extends StatefulWidget {
  const buildDraggable({super.key});

  @override
  State<buildDraggable> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<buildDraggable> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.palette,
            color: Colors.deepOrange,
            size: 48.0,
          ),
          Text(
            'Drag Me below to change color',
          ),
        ],
      ),
      childWhenDragging: Icon(
        Icons.palette,
        color: Colors.grey,
        size: 48.0,
      ),
      feedback: Icon(
        Icons.brush,
        color: Colors.deepOrange,
        size: 80.0,
      ),
      data: Colors.deepOrange.value,
    );
  }
}
