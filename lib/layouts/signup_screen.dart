import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:internship_task1/components/Buttons.dart';
import 'package:internship_task1/layouts/login_screen.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/login_head.PNG'),
                Positioned(
                  top: 150,
                  left: 20,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.arrow_back_ios),
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome to Fashion Daily',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(children: const [
                    Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Help',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.help_rounded,
                      color: Colors.blueAccent,
                    ),
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(fontSize: 14.0),
                    textAlign: TextAlign.start,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Type your Email',
                      // labelText: 'Email',
                      // labelStyle: TextStyle(
                      //   fontSize: 15.0,
                      //   color: Colors.black,
                      // ),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Phone Number',
                    style: TextStyle(fontSize: 14.0),
                    textAlign: TextAlign.start,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Type your Phone',
                      // labelText: 'Email',
                      // labelStyle: TextStyle(
                      //   fontSize: 15.0,
                      //   color: Colors.black,
                      // ),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
// Test

// Test

                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(fontSize: 14.0),
                    textAlign: TextAlign.start,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Type your Password',
                      // labelText: 'Email',
                      // labelStyle: TextStyle(
                      //   fontSize: 15.0,
                      //   color: Colors.black,
                      // ),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyMaterialButton(inputText: 'Register', function: () {}),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'Or',
                      style: TextStyle(fontSize: 14.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    //margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/g.png',
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sign in with google',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t Have an Account',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        },
                        child: const Text('Sign in Here'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'By Registering your account, you are agree to our',
                          style: TextStyle(fontSize: 10.0),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Terms and Conditions',
                          style: TextStyle(
                              fontSize: 12.0, color: Colors.blueAccent),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
