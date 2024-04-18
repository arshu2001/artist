import 'package:artist/normal_user/acheivement.dart';
import 'package:artist/normal_user/artists.dart';
import 'package:artist/normal_user/booking.dart';
import 'package:artist/normal_user/events.dart';
import 'package:flutter/material.dart';

class NormalHome extends StatefulWidget {
  const NormalHome({super.key});

  @override
  State<NormalHome> createState() => _NormalHomeState();
}

class _NormalHomeState extends State<NormalHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
         body: Expanded(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NormalArtist(),));
                    },
                    child: Container(
                      height: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
                        color: Color.fromRGBO(110, 176, 201, 1),
                        image: DecorationImage(image: AssetImage('images/backimg.png'),
                        fit: BoxFit.cover,
                              
                        )
                      ),
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
                    padding: const EdgeInsets.only(top: 150,left: 100),
                    child: Text('Payment 2500/-',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Ubuntu'
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 260),
                    child: Center(
                      child: Container(
                        height: 60,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(199, 100, 120, 0.20),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('place',
                              style: TextStyle(
                                color: Color.fromRGBO(134, 135, 142, 1),
                                fontFamily: 'ubuntu'
                              ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 340),
                    child: Center(
                      child: Container(
                        height: 60,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(199, 100, 120, 0.20),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 180),
                              child: Text('Rating',
                              style: TextStyle(
                                color: Color.fromRGBO(134, 135, 142, 1),
                                fontFamily: 'ubuntu'
                              ),
                              ),
                            ),
                            Icon(Icons.star,color: Colors.amber,),
                            Icon(Icons.star,color: Colors.amber,),
                            Icon(Icons.star,color: Colors.amber,),
                            Icon(Icons.star,color: Colors.amber,),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(Icons.star),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 420),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 212,
                            width: 160,
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Colors.amber,
                               image: DecorationImage(image: AssetImage('images/event.png'),
                               fit: BoxFit.cover
                               ) 
                            ),
                            
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 212,
                            width: 160,
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               image: DecorationImage(image: AssetImage('images/acheve.png'),
                               fit: BoxFit.cover
                               ) 
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 590,left: 40),
                    child: InkWell(
                      onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => NormalEvents(),));
                      },
                      child: Container(
                        height: 30,
                        width: 124,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(227, 154, 133, 1)
                        ),
                        child: Center(child: Text('Events')),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 590,left: 230),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NormalAchev(),));
                      },
                      child: Container(
                        height: 30,
                        width: 124,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(227, 154, 133, 1)
                        ),
                        child: Center(child: Text('Acheivement')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 640),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UserBooking(),));
                      },
                      child: Container(
                        height: 87,
                        width: 390,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                                   Color(0xFF9B3F3F), // Start color (#9B3F3F)
                                   Color(0xFF000000), // End color (#000000)
                                  ],
                          ),
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Book Now',style: TextStyle(
                              color: Color.fromRGBO(250, 233, 235, 1),
                              fontSize: 44,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'ubuntu'
                            ),),
                            Image.asset('images/book.png'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(onPressed: () {
                     
                    }, icon: Icon(Icons.bookmark_outlined,size: 40,)),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}