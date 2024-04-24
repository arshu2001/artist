import 'package:artist/normal_user/normal_botnav.dart';
import 'package:flutter/material.dart';

class NormalRegistration extends StatefulWidget {
  const NormalRegistration({super.key});

  @override
  State<NormalRegistration> createState() => _NormalRegistrationState();
}

class _NormalRegistrationState extends State<NormalRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(110, 176, 201, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('Registration',style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'RobotoSerif',
                    fontWeight: FontWeight.w400
                  ),),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 90),
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
                  Align(
                    child: SizedBox(
                      width: 330,
                      child: TextFormField(
                        decoration: const InputDecoration(
                                    hintText: 'First Name',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Rosarivo'
                                    )
                                  ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: TextFormField(
                      decoration: const InputDecoration(
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
                      decoration: const InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: TextFormField(decoration: const InputDecoration(
                                  hintText: 'Re-enter Password',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),),
                  ),
                  SizedBox(
                    width: 330,
                    child: TextFormField(
                      decoration: const InputDecoration(
                                  hintText: 'Address',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: TextFormField(
                      decoration: const InputDecoration(
                                  hintText: 'Phone',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: TextFormField(
                      decoration: const InputDecoration(
                                  hintText: 'Account Type',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Rosarivo'
                                  )
                                ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 75),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NormalBotnav(),));
                      },
                      child: Container(
                        height: 70,
                        width: 230,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Center(child: Text('Sign Up',style: TextStyle(
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