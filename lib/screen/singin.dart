

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/CustomButton.dart';
import 'package:flutter_application_1/widget/CustomInput.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(16),
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Text('Sing Up',
            style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
           ),
           ),
           const SizedBox(height: 20),
           Custominput(hint: 'Name',
            obscure: false,
             valid: (p0) {
                if (p0!.isEmpty) {
                  return 'Enter your name';
                }
                return "null";
              },
               keyType: TextInputType.name),
              Custominput(hint: 'Email',
               obscure: false,
               valid: (p0) {
                if (p0!.isEmpty) {
                  return 'Enter your Email';
                }
                return "null";
              },
               keyType: TextInputType.emailAddress),
            const SizedBox(height: 16),
           Custominput(hint: 'Password',
            obscure: true, 
            valid: (p0) {
                if (p0!.isEmpty) {
                  return 'Enter your Password';
                }
                return "null";
              }, keyType: TextInputType.visiblePassword),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Already have an account'),
                Icon(Icons.arrow_right),
              ],
            ),
            const SizedBox(height: 40),
            Custombutton(title: 'SIGN UP',
             onpress: () { 
              Navigator.pushReplacementNamed(context, '/home');
            },),
            const SizedBox(height: 80),
            const Text('Or Sing Up with social account'),
            const SizedBox(height: 20),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/Group.png'),
                const SizedBox(width: 40),
                Image.asset('assets/facebook.png') 

              ],
            )
          ],
        ),
    ),
    );
  }
}