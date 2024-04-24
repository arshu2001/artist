// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:artist/artist/bottomnav.dart';
import 'package:flutter/material.dart';

class RegArtist extends StatefulWidget {
  const RegArtist({super.key});

  @override
  State<RegArtist> createState() => _RegArtistState();
}

class _RegArtistState extends State<RegArtist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(110, 176, 201, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Registration',style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'RobotoSerif',
                    fontWeight: FontWeight.w400
                  ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/imgicon.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 330,
                    child: TextFormField(
                      decoration: InputDecoration(
                                  hintText: 'First Name',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: TextFormField(
                      decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
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
                    width: 330,
                    child: TextFormField(decoration: InputDecoration(
                                  hintText: 'Address',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),),
                  ),
                  SizedBox(
                    width: 330,
                    child: TextFormField(
                      decoration: InputDecoration(
                                  hintText: 'phone',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: TextFormField(
                      decoration: InputDecoration(
                                  hintText: 'Social Media Id',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: TextFormField(
                      decoration: InputDecoration(
                                  hintText: 'Verification Video',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: TextFormField(
                      decoration: InputDecoration(
                                  hintText: 'Fee Per Program',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                    ),
                  ),
                  SizedBox(
                    child: TextFormField(
                      
                      decoration: InputDecoration(
                                  hintText: 'City',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNav(),));
                      },
                      child: Container(
                        height: 70,
                        width: 230,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Sign Up',style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Rosarivo',
                          fontWeight: FontWeight.w400
                        ),)),
                      ),
                    ),
                  )
                  
                  
                ],
              ),

            )
        
          ],
        ),
      ),
    );
  }
}