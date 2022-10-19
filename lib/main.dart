// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage("Assests/logo.png"),
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Maintenance",
                            style: TextStyle(
                                fontFamily: "Rubik Medium", fontSize: 20),
                          ),
                          Text("Box",
                              style: TextStyle(
                                  fontFamily: "Rubik Medium",
                                  fontSize: 20,
                                  color: Color(0xfff97038))),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Center(
                    child: Text(
                      "Log in",
                      style:
                          TextStyle(fontFamily: "Rubik Medium", fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      "This is the Login application that \ndeveloped by AS During Practic",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Rubik Regular",
                        fontSize: 14,
                        color: Color(0xff203142),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                        decoration: InputDecoration(
                      fillColor: const Color(0xffF8f9fa),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffF8f9fa)),
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: const Icon(Icons.email_rounded),
                      hintText: 'Email',
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: const Color(0xffF8f9fa),
                            filled: true,
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF8f9fa)),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20))),
                            prefixIcon: Icon(Icons.key_off),
                            hintText: 'Password',
                            suffixIcon: Icon(Icons.remove_red_eye))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Forgot Password?",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xfff97038),
                      ),
                      child: const Center(
                        child: Text(
                          "LOG IN",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik Regular",
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {
                            print("Signup Page Not Ready");
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Color(0xfff97038)),
                          )),
                    ],
                  )
                ],
              ),
            )));
  }
}
