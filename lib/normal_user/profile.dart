import 'package:artist/normal_user/normaleditprofile.dart';
import 'package:artist/normal_user/savedartist.dart';
import 'package:artist/normal_user/settings.dart';
import 'package:flutter/material.dart';

class NormalProfile extends StatefulWidget {
  const NormalProfile({super.key});

  @override
  State<NormalProfile> createState() => _NormalProfileState();
}

class _NormalProfileState extends State<NormalProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: Stack(
            children: [
              Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          color: Color.fromRGBO(110, 176, 201, 1),
                          image: DecorationImage(image: AssetImage('images/backimg.png'),
                          fit: BoxFit.cover,
                                
                          )
                        ),
                      ),
                      const Padding(
                      padding: EdgeInsets.only(top: 50,left: 20),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/deve.png'),
                        radius: 50,
                        ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 70,left: 150),
                      child: Text('Devanand s',style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Ubuntu',
                        color: Colors.black
                      ),),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 240,left: 8),
                      child: Container(
                        height: 60,
                        width: 375,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(199, 100, 120, 0.20),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('phone',
                              style: TextStyle(
                                color: Color.fromRGBO(134, 135, 142, 1),
                                fontFamily: 'ubuntu'
                              ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('+91 6282607722',
                              style: TextStyle(
                                fontFamily: 'ubuntu'
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 320,left: 8),
                      child: Container(
                        height: 60,
                        width: 375,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(199, 100, 120, 0.20),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('Emale',
                              style: TextStyle(
                                color: Color.fromRGBO(134, 135, 142, 1),
                                fontFamily: 'ubuntu'
                              ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('devanand@gmail.com',
                              style: TextStyle(
                                fontFamily: 'ubuntu'
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 400,left: 8),
                      child: Container(
                        height: 60,
                        width: 375,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(199, 100, 120, 0.20),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('place',
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
                                fontFamily: 'ubuntu'
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 310),
                      child: Center(
                        child: Container(
                          height: 60,
                          width: 375,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(199, 100, 120, 0.20),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('Address',
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
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 80),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const SavedArtist(),));
                          },
                          child: Container(
                                    height: 50,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green
                                    ),
                                    child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Saved Artist',style: TextStyle(
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
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const NormalEditProfile(),));
                        },
                        child: Container(
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromRGBO(255, 69, 99, 1.0),
                                  ),
                                  child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Edit Profile',style: TextStyle(
                                        fontFamily: 'ubuntu',
                                        color: Colors.white,
                                        fontSize: 32
                                      ),),
                                    ],
                                  ),
                                ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NormalSettings(),));
                      }, icon: const Icon(Icons.settings)))
            ],
          ),
        ),
      ),
    );
  }
}