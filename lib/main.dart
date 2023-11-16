import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('Snack Bar')),
      body: const MySnackToast(),
    ));
  }
}

class MySnackToast extends StatelessWidget {
  const MySnackToast({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
            child: const Text('Show me SnackBar'),
            onPressed: () {
              const snackBar = SnackBar(
                content: Text(
                  'Hello',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(seconds: 1),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }),
        const SizedBox(height: 50),
        ElevatedButton(
          child: const Text('Show me Toast'),
          onPressed: () {
            Fluttertoast.showToast(
              msg: '토스트',
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.black,
              fontSize: 20,
              textColor: Colors.white,
              toastLength: Toast.LENGTH_SHORT,
            );
          },
        ),
      ],
    ));
  }
}
