
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
          title: const Text('Experiment 2(b)'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),

              const Text(
                'Row Layout',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.red,
                    child: const Center(child: Text('One')),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.green,
                    child: const Center(child: Text('Two')),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.orange,
                    child: const Center(child: Text('Three')),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                'Column Layout',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Column(
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        'First',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        'Second',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.teal,
                    child: const Center(
                      child: Text(
                        'Third',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                'Stack Layout',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 180,
                width: 250,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 180,
                      width: 250,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 120,
                      width: 170,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 60,
                      width: 90,
                      color: Colors.pink,
                      child: const Center(
                        child: Text(
                          'Top',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
