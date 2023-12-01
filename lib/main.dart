import 'package:day4_test/first_page.dart';
import 'package:day4_test/second_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'route_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: GoRouter(routes: [
        GoRoute(
          path: kRouteFirstPage,
          builder: (BuildContext context, GoRouterState state) {
            return const FirstPage();
          },
        ),
        GoRoute(
          path: kRouteSecondPage,
          builder: (BuildContext context, GoRouterState state) {
            // GET THE DATA FROM STATE
            final data = state.extra as String?;
            return SecondPage(
              userInputData: data ?? "",
            );
          },
        ),
      ]),
    );
  }
}
