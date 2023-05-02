import 'package:flutter/material.dart';



import 'login.dart';
import 'page.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/books.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email address',
              ),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
              obscureText: true,
            ),
            TextFormField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                hintText: 'Confirm your password',
              ),
              obscureText: true,
            ),
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: GestureDetector(
                  onTap: () {
                    // Use the null-aware operator to safely navigate to the next screen if context is not null
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => TodoMenu()));
                  },
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 236, 200, 243),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  
  First2() {}
}
