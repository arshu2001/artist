// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class NormalEditProfile extends StatefulWidget {
  const NormalEditProfile({super.key});

  @override
  State<NormalEditProfile> createState() => _NormalEditProfileState();
}

class _NormalEditProfileState extends State<NormalEditProfile> {
  XFile? pick;
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                        height: 260,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 69, 99, 1.0),
                          image: DecorationImage(image: AssetImage('images/backimg.png'),
                          fit: BoxFit.cover,
                                
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 130),
                        child: Container(
                          height: 610,
                          width: 395,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                            color: Colors.white
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.only(top: 100,left: 10,right: 10),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Name:',style: TextStyle(
                                    fontFamily: 'ubuntu',
                                    fontSize: 18
                                  ),),
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.grey)
                                    ),
                                    hintText: 'Example'
                                  ),
                                  
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Email:',style: TextStyle(
                                    fontFamily: 'ubuntu',
                                    fontSize: 18
                                  ),),
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.grey)
                                    ),
                                    hintText: 'Example'
                                  ),
                                  
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Mobile number:',style: TextStyle(
                                    fontFamily: 'ubuntu',
                                    fontSize: 18
                                  ),),
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.grey)
                                    ),
                                    hintText: 'Example'
                                  ),
                                  
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Date of Birth:',style: TextStyle(
                                    fontFamily: 'ubuntu',
                                    fontSize: 18
                                  ),),
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.grey)
                                    ),
                                    hintText: 'Example'
                                  ),
                                  
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Place:',style: TextStyle(
                                    fontFamily: 'ubuntu',
                                    fontSize: 18
                                  ),),
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.grey)
                                    ),
                                    hintText: 'Example'
                                  ),
                                  
                                ),
                      Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                                    height: 50,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(255, 69, 99, 1.0),
                                    ),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text('Submit',style: TextStyle(
                                          fontFamily: 'ubuntu',
                                          color: Colors.white,
                                          fontSize: 32
                                        ),),
                                      ],
                                    ),
                                  ),
                        ),
                      ),
                    ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 110,
                        left: 0,
                        right: 0,

                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 50,
                            child: image == null? Text('data'):Image.file(image!),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200,left: 205),
                        child: IconButton(onPressed: () async{
                          ImagePicker picked = ImagePicker();
                          
                          pick = await picked.pickImage(source: ImageSource.gallery);
        
                            setState(() {
                              image = File(pick!.path);
                            });
                          
                        }, icon:Icon(Icons.add_a_photo)),
                      ),
                      
          ],
        ),
      ),
    );
  }
}