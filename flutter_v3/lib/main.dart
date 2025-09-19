import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'page_one.dart';
import 'page_two.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const PageOne(),
    ),
    GoRoute(
      path: '/pagetwo',
      builder: (context, state) => const PageTwo(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
    );
  }
}