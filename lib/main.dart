import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: Scaffold(
appBar: AppBar(
title: const Text('Experiment 2(a)'),
backgroundColor: Colors.blue,
foregroundColor: Colors.white,
),
body: Center(
child: SingleChildScrollView(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text(
'Welcome to Flutter Widgets',
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
color: Colors.blue,
),
),
const SizedBox(height: 20),
Container(
height: 100,
width: 200,
color: Colors.orange,
alignment: Alignment.center,
child: const Text(
'Container Widget',
style: TextStyle(
fontSize: 18,
color: Colors.white,
),
),
),
const SizedBox(height: 20),
const Icon(
Icons.music_note,
size: 70,
color: Colors.purple,
),
const SizedBox(height: 20),
Image.network(
'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
height: 120,
width: 120,
errorBuilder: (context, error, stackTrace) {
return const Text('Image could not be loaded');
},
),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () {
print('Button clicked');
},
child: const Text('Click Me'),
),
const SizedBox(height: 10),
const Text(
'Flutter makes app development easy!',
style: TextStyle(fontSize: 16),
),
],
),
),
),
),
);
}
}
