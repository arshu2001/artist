import 'package:artist/artist/regartist.dart';
import 'package:flutter/material.dart';

class Section extends StatefulWidget {
  const Section({super.key});

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Stack(
          children: [
            Container(
              color: Color.fromRGBO(110, 176, 201, 1)
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Image.asset('images/threepeople.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 320,
                    width: 330,
                    color: Color.fromRGBO(217, 217, 217, 0.59),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280,left: 80),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegArtist(),));
                },
                child: Container(
                  height: 70,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('Artist',style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rosarivo'
                  ),)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400,left: 80),
              child: Container(
                height: 70,
                width: 230,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text('User',style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Rosarivo'
                ),)),
              ),
            )

          ],
        ),
      ),
    );
  }
}