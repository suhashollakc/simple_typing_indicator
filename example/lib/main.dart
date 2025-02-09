import 'package:flutter/material.dart';
import 'package:simple_typing_indicator/simple_typing_indicator.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Typing Indicator Example',
      home: const ExampleHomePage(),
    );
  }
}

class ExampleHomePage extends StatelessWidget {
  const ExampleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Typing Indicator Example'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Default usage.
          const Text(
            'Default Typing Indicator:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Center(child: SimpleTypingIndicator()),
          const Divider(),

          // With text.
          const Text(
            'With "typing..." text:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('typing...',
                    style:
                        TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
                SizedBox(width: 8),
                SimpleTypingIndicator(
                  dotColor: Colors.green,
                  dotSize: 10.0,
                  spacing: 6.0,
                  duration: Duration(milliseconds: 1500),
                ),
              ],
            ),
          ),
          const Divider(),

          // Customized usage.
          const Text(
            'Customized Indicator:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Center(
            child: SimpleTypingIndicator(
              dotColor: Colors.red,
              dotSize: 16.0,
              spacing: 10.0,
              duration: Duration(milliseconds: 1800),
            ),
          ),
          const Divider(),

          // With speed parameter.
          const Text(
            'Faster Animation (speed = 2.0):',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Center(
            child: SimpleTypingIndicator(
              dotColor: Colors.orange,
              dotSize: 12.0,
              spacing: 6.0,
              duration: Duration(milliseconds: 1200),
              speed: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}
