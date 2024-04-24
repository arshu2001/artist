import 'package:artist/admin/login.dart';
import 'package:artist/artist/profile.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: Stack(
            children: [
              Container(
                color: const Color.fromRGBO(110, 176, 201, 1),
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
                        color: const Color.fromRGBO(217, 217, 217, 0.3),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 300,
                              child: TextFormField(
                                decoration: const InputDecoration(
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
                                decoration: const InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                              )),
                            SizedBox(
                              width: 300,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                              ),
                            ),
                            const SizedBox(
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
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile(),));
                                },
                                child: Container(
                                  height: 60,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: const Center(child: Text('Login',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 36,
                                    fontFamily: 'Rosarivo'
                                  ),
                                  )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Section(),));
                              }, child: const Text('Sign up',style: TextStyle(
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
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminLogin(),)) ;
                }, icon: const Icon(Icons.more_vert_sharp)))
            ],
          ),
        ),
      ),
    );
  }
}