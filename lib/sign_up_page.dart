import 'package:flutter/material.dart';
import 'package:hungry_me/constant.dart';
import 'package:hungry_me/dashboard_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffea3636),
      appBar: AppBar(
        backgroundColor: const Color(0xffea3636),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 32),
              const Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Create your account',
                style: TextStyle(
                  color: Color(0xff808080),
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: border,
                  focusedBorder: border,
                  enabledBorder: border,
                  errorBorder: errorBorder,
                  focusedErrorBorder: errorBorder,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: border,
                  focusedBorder: border,
                  enabledBorder: border,
                  errorBorder: errorBorder,
                  focusedErrorBorder: errorBorder,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: border,
                  focusedBorder: border,
                  enabledBorder: border,
                  errorBorder: errorBorder,
                  focusedErrorBorder: errorBorder,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: border,
                  focusedBorder: border,
                  enabledBorder: border,
                  errorBorder: errorBorder,
                  focusedErrorBorder: errorBorder,
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: Color(0xffe1e1e1),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: border,
                  focusedBorder: border,
                  enabledBorder: border,
                  errorBorder: errorBorder,
                  focusedErrorBorder: errorBorder,
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: Color(0xffe1e1e1),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const DashboardPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffea3636),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 64,
                    vertical: 16,
                  ),
                ),
                child: const Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Already have an account? '),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xffea3636),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
