import 'package:artist/admin/artist.dart';
import 'package:artist/admin/rating.dart';
import 'package:artist/admin/user.dart';
import 'package:flutter/material.dart';

class AdminManage extends StatefulWidget {
  const AdminManage({super.key});

  @override
  State<AdminManage> createState() => _AdminManageState();
}

class _AdminManageState extends State<AdminManage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: Stack(
            children: [
               SizedBox(
              height: double.infinity,
              child: Image.asset('images/manage.jpeg',fit: BoxFit.cover,),
              ),
              Align(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminArtist(),));
                      },
                      child: Container(
                        height: 81,
                        width: 312,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            
                            colors: [
                              Color.fromRGBO(94, 213, 233, 1),
                            Color.fromRGBO(194, 223, 228,1),
                            ]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text('Artists',style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 50
                          ),),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminUser(),));
                      },
                      child: Container(
                        height: 81,
                        width: 312,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            
                            colors: [
                              Color.fromRGBO(94, 213, 233, 1),
                            Color.fromRGBO(194, 223, 228,1),
                            ]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text('User',style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 50
                          ),),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminRating(),));
                      },
                      child: Container(
                        height: 81,
                        width: 312,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            
                            colors: [
                              Color.fromRGBO(94, 213, 233, 1),
                            Color.fromRGBO(194, 223, 228,1),
                            ]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text('Rating & badge',style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 30
                          ),),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20,right: 10),
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red
                    ),
                    child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Logout',style: TextStyle(
                          fontFamily: 'ubuntu',
                          fontSize: 18,
                          color: Colors.white
                        ),),
                        Icon(Icons.logout,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              )
],
          ),
  
        ),
      ),
    );
  }
}