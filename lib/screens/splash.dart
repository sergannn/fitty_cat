import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/board2');
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.transparent,
        title: const Text('Fitly',style:  TextStyle(color: Colors.white,fontSize: 150, fontFamily: 'gotham'),)),
      
      body:Container(
        width:MediaQuery.of(context).size.width, 
        height:MediaQuery.of(context).size.height,child:
         Image.asset('asset/image.jpg',fit: BoxFit.cover,
          /*onPressed: () {
            Navigator.pushNamed(context, '/board1');
            // Navigate to the second screen when tapped.
          },*/
       
      )
      
    ));
  }
}
