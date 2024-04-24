import 'package:flutter/material.dart';

class NormalAchev extends StatefulWidget {
  const NormalAchev({super.key});

  @override
  State<NormalAchev> createState() => _NormalAchevState();
}

class _NormalAchevState extends State<NormalAchev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Acheivement',style: TextStyle(
          fontFamily: 'ubuntu',
          color: Color.fromRGBO(194, 74, 107, 1)
        ),)),
      ),
      body: Expanded(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    height: 127,
                    width: 312,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(185, 228, 255, 0.5),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.center,
                            child: Text('shared  a collaboration work with Asianet')),
                          const Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(right: 83,top: 10),
                              child: Text('Ashianet Filim Award',style: TextStyle(
                                fontSize: 18
                              ),),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Image.asset('images/logout.png',height: 40,width: 40,),
                            ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 127,
                      width: 312,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(220, 231, 222, 1),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.center,
                              child: Text('shared  a collaboration work with Asianet')),
                            const Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(right: 83,top: 10),
                                child: Text('Ashianet Filim Award',style: TextStyle(
                                  fontSize: 18
                                ),),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Image.asset('images/logout.png',height: 40,width: 40,),
                              ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 127,
                      width: 312,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(205, 108, 135, 0.3),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.center,
                              child: Text('shared  a collaboration work with Asianet')),
                            const Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(right: 83,top: 10),
                                child: Text('Ashianet Filim Award',style: TextStyle(
                                  fontSize: 18
                                ),),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Image.asset('images/logout.png',height: 40,width: 40,),
                              ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}