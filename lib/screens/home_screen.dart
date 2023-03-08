import 'package:custom_login_signup_page/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:custom_login_signup_page/widgets/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                'YOU ARE LOGGED IN',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const Icon(
                Icons.done,
                color: Colors.green,
                size: 300,
              ),
              const Spacer(),
              Button(
                  ontap: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    });
                  },
                  title: 'Log Out'),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
