import 'package:flutter/material.dart';

class BookingDetail extends StatefulWidget {
  const BookingDetail({super.key});

  @override
  State<BookingDetail> createState() => _BookingDetailState();
}

class _BookingDetailState extends State<BookingDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Booking',style: TextStyle(
            fontFamily: 'ubuntu',
            color: Color.fromRGBO(194, 74, 107, 1)
            
          ),),
        ),
      ),
      body: Expanded(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 150),
                child: Container(
                  height: 350,
                  width: 335,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(233, 234, 244, 1)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120,left: 70),
              child: Container(
                height: 74,
                width: 253,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(204, 207, 232, 0.63)
                ),
                child: const Center(child: Text('Thissur Morning Section',style: TextStyle(
                  fontFamily: 'ubuntu',
                  fontSize: 18,
                  color: Color.fromRGBO(98, 99, 106, 0.627)
                ),)),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 280,left: 70),
              child: Container(
                height: 74,
                width: 253,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(204, 207, 232, 0.63)
                ),
                child: const Center(child: Text('Kochi night section',style: TextStyle(
                  fontFamily: 'ubuntu',
                  fontSize: 18,
                  color: Color.fromRGBO(98, 99, 106, 0.627)
                ),)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 230),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red
                  ),
                  onPressed: () {
                  
                }, child: const Text('Added',style: TextStyle(
                  fontFamily: 'ubuntu',
                  color: Colors.white,
                  fontSize: 18
                ),)),
              ),
            ),
             Center(
               child: Padding(
                 padding: const EdgeInsets.only(top: 90),
                 child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.green
                   ),
                   onPressed: () {
                   
                 }, child: const Text('Add',style: TextStyle(
                   fontFamily: 'ubuntu',
                   color: Colors.white,
                   fontSize: 18
                 ),)),
               ),
             )
          ],
        ),
      ),
    );
  }
}