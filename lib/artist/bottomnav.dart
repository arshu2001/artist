import 'package:artist/artist/chatsystem.dart';
import 'package:artist/artist/profile.dart';
import 'package:artist/artist/regartist.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  List screens = [
    const Profile(),
    const ChatSystem(),
    const RegArtist()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(246, 238, 240, 1),
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.message,color: Color.fromRGBO(191, 68, 116, 1),),
            label: 'Message'
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Color.fromRGBO(191, 68, 116, 1)),
            label: 'Profile'
            ),
        ]),
    );
  }
}