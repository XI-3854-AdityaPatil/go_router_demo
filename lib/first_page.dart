import 'package:day4_test/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String _userInput = "";

  String textData = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Screen 1",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter here...",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onChanged: (value) {
                  _userInput = value;
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // PASSING DATA USING EXTRA PARAMETER
                  GoRouter.of(context).push(kRouteSecondPage, extra: _userInput);
                  // context.go('/second', extra: );
                },
                child: const Text('Next')),
            const SizedBox(
              height: 50,
            ),
            Text(textData),
          ],
        ),
      ),
    );
  }
}

class PersonModel {
  String name;
  int age;

  PersonModel(this.name, this.age);
}
