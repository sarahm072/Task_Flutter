import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/CustomButton.dart';
import 'package:flutter_application_1/widget/CustomInput.dart';

 class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Add logic for validating credentials or handling authentication here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  //  "Forgot your password?"
                },
                child: const Text('Forgot your password?'),
              ),
              const Icon(Icons.arrow_right),
            ],
          ),
         const SizedBox(height: 20),
         Custombutton(title: 'LOGIN', onpress: (){Navigator.pushReplacementNamed(context, '/home');}),
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
    );
  }
}