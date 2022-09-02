import 'package:flutter/material.dart';
import 'package:project22/second_screen.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';


main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        home: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  String? email;

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email:',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                onChanged: (newValue) {
                  email = newValue;
                },
                decoration:
                InputDecoration(hintText: 'Please, enter your email'),
              ),
              SizedBox(height: 25),
              Text(
                'Password:',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Please, enter your password',
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print(
                        'Email: $email - Password: ${passwordController.text}');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SecondScreen(
                            password: passwordController.text,
                            email: email,
                          );
                        },
                      ),
                    );
                  },
                  child: Text('Sign In'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// LIFO
// FILOILO