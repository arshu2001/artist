// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:artist/artist/aboutus.dart';
import 'package:artist/artist/editprofile.dart';
import 'package:artist/artist/help.dart';
import 'package:artist/artist/password.dart';
import 'package:artist/login.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  
  List Settingss =[
    {'icon':Icons.edit,'text1':'Edit Profile','text2':'Changes Required'},
    {'icon':Icons.password,'text1':'Password','text2':'Change Password'},
    {'icon':Icons.help,'text1':'Help','text2':'Report a Problem'},
    {'icon':Icons.person,'text1':'About Us','text2':'Report a Problem'},
    {'icon':Icons.notifications,'text1':'Notification','text2':'App Notification'},
    

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                      height: 330,
                      width: 393,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(110, 176, 201, 1),
                        image: DecorationImage(image: AssetImage('images/backimg.png'),
                        fit: BoxFit.cover,
            
                        )
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.only(bottom: 180),
                        child: Text('Settings',style: TextStyle(
                          fontFamily: 'ubuntu',
                          fontSize: 26
                        ),),
                      )),
                    ),
                    IconButton(onPressed: () {
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios,size: 30,)),
                    Padding(
                      padding: const EdgeInsets.only(top: 230),
                      child: Container(
                        height: 510,
                        width: 395,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50)
                          )
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 270),
                        child: Container(
                          height: 425,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                          ),
                          child: ListView.separated(itemBuilder: (context, index) {
                            return ListTile(
                              
                              leading: Icon(Settingss[index]['icon']),
                              title: Text(Settingss[index]['text1'],style: TextStyle(
                                fontFamily: 'ubuntu',
                                fontSize: 18
                              ),),
                              subtitle: Text(Settingss[index]['text2']),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                              onTap: () {
                                if (index == 0){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
                                }if (index == 1){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Passwordd(),));
                                }if (index == 2){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HelpStt(),));
                                }else if (index == 3){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs(),));
                                }
                              },
                            );
                          }, separatorBuilder: (context, index) {
                            return Divider(thickness: 1,);
                          }, itemCount: Settingss.length),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 700),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                          },
                          child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Logout',style: TextStyle(
                                  fontFamily: 'ubuntu',
                                  color: Colors.white,
                                  fontSize: 32
                                ),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.logout,size: 32,color: Colors.white,),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    
              ],
            ),
          ),
        ),
      ),
    );
  }
}