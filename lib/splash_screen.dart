import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hungry_me/sign_up_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe26666),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 60, left: 16),
              child: Text(
                'Hungry Me',
                style: GoogleFonts.lobster(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 32),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/chef.png',
                  width: MediaQuery.of(context).size.width,
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xffeeebeb),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 32),
                        const Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            text: 'Delight ',
                            style: TextStyle(
                              color: Color(0xffee0101),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: 'Delivered to\nYour Doorstep',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  letterSpacing: 0.3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            text: 'Our aim is to bring tasty ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: 'meals',
                                style: TextStyle(
                                  color: Color(0xffee0101),
                                  fontSize: 16,
                                  letterSpacing: 0.3,
                                ),
                              ),
                              TextSpan(
                                text: ' straight\n to you, effortlessly',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: 0.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const SignUpPage(),
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
                            'Get Started',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
