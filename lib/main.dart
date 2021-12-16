import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var container = Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                width: 100,
                color: Colors.blue,
              );
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(child: Text('Column & Row')),
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                width: 100,
                color: Colors.amber,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green.withOpacity(0.6),
                  ),
                ],
              ),
              container,
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
