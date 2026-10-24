
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// StatelessWidget: UI does not change by itself
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Experiment 5a',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const WidgetDemo(),
    );
  }
}

// StatefulWidget: UI can change when the state changes
class WidgetDemo extends StatefulWidget {
  const WidgetDemo({super.key});

  @override
  State<WidgetDemo> createState() => _WidgetDemoState();
}

class _WidgetDemoState extends State<WidgetDemo> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 5(a)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Stateful and Stateless Widgets',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),

            const Text(
              'This is a Stateless Text Widget',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            const Icon(
              Icons.music_note,
              size: 60,
              color: Colors.indigo,
            ),

            const SizedBox(height: 20),

            Text(
              'Button clicked: $count times',
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text('Click Me'),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
