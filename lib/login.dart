import 'package:artist/section.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Stack(
          children: [
            Container(
              color: Color.fromRGBO(110, 176, 201, 1),
            ),
            Container(
              
              child: Image.asset('images/oldman.png',),

            ),
            Column(
              children: [
                Image.asset('images/artisticon.png')
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      width: 350,
                      height: 370,
                      color: Color.fromRGBO(217, 217, 217, 0.3),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Username',
                                hintStyle: TextStyle(
                                  fontFamily: 'Rosarivo'
                                )
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  fontFamily: 'Rosarivo'
                                )
                              ),
                            )),
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontFamily: 'Rosarivo'
                                )
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Type',
                                hintStyle: TextStyle(
                                  fontFamily: 'Rosarivo'
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 60,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Center(child: Text('Login',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 36,
                                fontFamily: 'Rosarivo'
                              ),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Section(),));
                            }, child: Text('Sign up',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Rosarivo',
                              color: Colors.black
                            ),)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}