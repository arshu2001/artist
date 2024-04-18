import 'package:artist/normal_user/normal_home.dart';
import 'package:artist/normal_user/profile.dart';
import 'package:flutter/material.dart';

class NormalBotnav extends StatefulWidget {
  const NormalBotnav({super.key});

  @override
  State<NormalBotnav> createState() => _NormalBotnavState();
}

class _NormalBotnavState extends State<NormalBotnav> {
    int currentIndex = 0;
  List screens = [
    NormalHome(),
    NormalProfile()

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
            icon: Icon(Icons.person,color: Color.fromRGBO(191, 68, 116, 1)),
            label: 'Profile'
            ),
        ]),
    );
  }
}