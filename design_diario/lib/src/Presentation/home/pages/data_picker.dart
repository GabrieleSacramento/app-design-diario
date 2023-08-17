import 'package:flutter/material.dart';

class DataPickerExample extends StatelessWidget {
  const DataPickerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data picker'),
      ),
      body: DatePickerDialog(
          initialDate: DateTime.now(),
          firstDate: DateTime(2023),
          lastDate: DateTime(2024)),
    );
  }
}
