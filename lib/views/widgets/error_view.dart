import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Occurred'),
      ),
      body: const Center(
        child: Text('Error Occurred please retry'),
      ),
    );
  }
}
