import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';


class SecondScreen extends StatelessWidget {
  String? email;
  String? password;

  SecondScreen({
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, value, child) {
            return Text(
              'Counter: ${value.count}',
              style: TextStyle(
                fontSize: 30,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // count++;
          Provider.of<CounterProvider>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}