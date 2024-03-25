import 'package:flutter/material.dart';

class buidDragTarget extends StatefulWidget {
  const buidDragTarget({super.key});

  @override
  State<buidDragTarget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<buidDragTarget> {
  @override
  Widget build(BuildContext context) {
    return DragTarget<int>(
      onAccept: (colorValue) {},
      builder: (BuildContext context, List<dynamic> acceptedData,
              List<dynamic> rejectedData) =>
          acceptedData.isEmpty
              ? Text(
                  'Drag To and see color change',
                )
              : Text(
                  'Painting Color: $acceptedData',
                  style: TextStyle(
                    color: Color(acceptedData[0]),
                    fontWeight: FontWeight.bold,
                  ),
                ),
    );
  }
}
