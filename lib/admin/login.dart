// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:artist/admin/admanage.dart';
import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                    Color.fromRGBO(25, 93, 120, 0.61),
                  Color.fromRGBO(44, 122, 154, 0.56),
                  ])
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Image.asset('images/artisticon.png',
                      height: 150,
                      ),
                    ),
                  ),
                  
                  
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 120,),
                      child: Container(
                        width: 350,
                        height: 370,
                        color: const Color.fromRGBO(217, 217, 217, 0.3),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 300,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'Enter Username',
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
                                    hintText: 'Enter your Password',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Rosarivo'
                                    )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 65),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminManage(),));
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: const Center(child: Text('Sign Up',
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
                                  
                                }, child: const Text('Forgot Password?',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Rosarivo',
                                  color: Colors.black
                                ),)
                                ),
                              )
                            ],
                          ),
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