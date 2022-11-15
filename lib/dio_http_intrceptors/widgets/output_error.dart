import 'package:flutter/material.dart';

class OutputError extends StatelessWidget {
  const OutputError({Key? key, required this.errorMessage}) : super(key: key);
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'An error occurred',
            style: TextStyle(
                color: Colors.red[800],
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Text(errorMessage, style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
