// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Expanded(
        child: Stack(
          children: [
            Container(
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
                    color: Color.fromRGBO(110, 176, 201, 1),
                    image: DecorationImage(image: AssetImage('images/backimg.png'),
                    fit: BoxFit.cover,
        
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/amlu.jpeg'),
                    radius: 50,
                    ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(top: 70,left: 130),
                  child: Text('Amaleswar',style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Ubuntu',
                    color: Colors.black
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110,left: 150),
                  child: Text('Dance 3y exp',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Ubuntu',
                    color: Colors.black
                  ),),
                ),
                Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Container(
                        height: 710,
                        width: 395,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50)
                          )
                        ),
                      ),
                    ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 190),
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 375,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(199, 100, 120, 0.20),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('payment',
                            style: TextStyle(
                              color: Color.fromRGBO(134, 135, 142, 1),
                              fontFamily: 'ubuntu'
                            ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('Kochi',
                            style: TextStyle(
                              fontFamily: 'ubuntu',
                              color: Color.fromRGBO(134, 135, 142, 1),
                            ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 375,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(199, 100, 120, 0.20),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('Bio',
                            style: TextStyle(
                              color: Color.fromRGBO(134, 135, 142, 1),
                              fontFamily: 'ubuntu'
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 130),
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 375,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(199, 100, 120, 0.20),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('Name',
                            style: TextStyle(
                              color: Color.fromRGBO(134, 135, 142, 1),
                              fontFamily: 'ubuntu'
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 290),
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 375,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(199, 100, 120, 0.20),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('Date Of Birth',
                            style: TextStyle(
                              color: Color.fromRGBO(134, 135, 142, 1),
                              fontFamily: 'ubuntu'
                            ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('01-01-2001',
                            style: TextStyle(
                              fontFamily: 'ubuntu',
                              color: Color.fromRGBO(134, 135, 142, 1),
                            ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 450),
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 375,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(199, 100, 120, 0.20),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('Youtube account Link',
                            style: TextStyle(
                              color: Color.fromRGBO(134, 135, 142, 1),
                              fontFamily: 'ubuntu'
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 650),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue
                                  ),
                                  child: Center(
                                    child: Text('Submit',style: TextStyle(
                                      fontFamily: 'ubuntu',
                                      color: Colors.white,
                                      fontSize: 32
                                    ),),
                                  ),
                                ),
                    ),
                  ),
                ),
                




                
                    
          ],
        ),
      ),
    );
  }
}