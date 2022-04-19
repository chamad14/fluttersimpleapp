import 'package:flutter/material.dart';
import 'package:simpleapp/homepage.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child:const Text(
                'Login Page',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              padding: const EdgeInsets.only(bottom: 30),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'email Address'),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'password'
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                child: const Text('Login'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen()))
                },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
