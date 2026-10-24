
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Text widget displays correct message',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello Flutter'),
          ),
        ),
      ),
    );

    expect(find.text('Hello Flutter'), findsOneWidget);
  });

  testWidgets('Button displays and responds to tap',
      (WidgetTester tester) async {
    bool buttonPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ElevatedButton(
            onPressed: () {
              buttonPressed = true;
            },
            child: const Text('Click Me'),
          ),
        ),
      ),
    );

    expect(find.text('Click Me'), findsOneWidget);

    await tester.tap(find.text('Click Me'));
    await tester.pump();

    expect(buttonPressed, isTrue);
  });

  testWidgets('Counter increases when button is tapped',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: CounterApp(),
      ),
    );

    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Test')),
      body: Center(
        child: Text('$count'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
