import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is my cat!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 30),

            Image.asset(
              'images/IMG_2936.jpg',
              width: 200,
            ),
            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text('Go Back to the Main Page'),
            ),
          ],
        ),
      ),
    );
  }
}