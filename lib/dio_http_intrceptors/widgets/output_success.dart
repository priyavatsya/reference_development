import 'package:flutter/material.dart';

class OutputSuccess extends StatelessWidget {
  const OutputSuccess({Key? key, required this.successMessage})
      : super(key: key);
  final String successMessage;

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
            'Operation successful!',
            style: TextStyle(
                color: Colors.green[600],
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Text(successMessage,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
