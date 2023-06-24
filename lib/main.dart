import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController a = TextEditingController();
  final TextEditingController b = TextEditingController();

  double result = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(fontSize: 25),
        ),

        //body
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('Enter 1 number', style: TextStyle(fontSize: 18.0)),
              const SizedBox(
                height: 15.0,
              ),
              TextField(
                  controller: a,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  )),
              const Text('\nEnter 2 number', style: TextStyle(fontSize: 18.0)),
              const SizedBox(
                height: 15.0,
              ),
              TextField(
                  controller: b,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  )),
              ElevatedButton(
                onPressed: () {
                  double c = double.parse(a.text);
                  double d = double.parse(b.text);

                  setState(() {
                    result = c + d;
                  });
                },
                child: const Text(
                  'Add',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  double c = double.parse(a.text);
                  double d = double.parse(b.text);

                  setState(() {
                    result = c - d;
                  });
                },
                child: const Text('Subtract'),
              ),
              //add one more elevated button for multiplication infront row

              Text(
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
                'Result: $result',
              ),
            ])),
      ),
    );
  }
}
