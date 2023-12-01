import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key, required this.userInputData,
  });

  final String userInputData;

  @override
  Widget build(BuildContext context) {
    // debugPrint(con)
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Screen 2",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              userInputData,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
