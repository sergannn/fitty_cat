import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment:
                    Alignment.bottomCenter, // Align text to bottom center
                children: [
                  SizedBox(
                    height: 480, // Установите желаемую высоту
                    child: Image.asset(
                      'assets/images/image.jpg',
                    ), // Замените на путь к вашему изображению,
                  ),
                  Positioned(
                    bottom: 320, // Расстояние от нижнего края изображения
                    child: Text(
                      'Fitly',
                      style: TextStyle(
                        fontFamily: 'Gotham Rounded',
                        fontSize: 60, // Adjust font size
                        color: Colors.black, // Make text visible on image
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              Container(height: 10),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Log your meal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Gotham Pro',
                    fontSize: 32,
                    color: Color(0xFF003E18),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(height: 5),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Quickly add what you eat to stay on track. The more you log, the better your insights.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 16,
                    color: Color(0xFF003E18),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(height: 5),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint('Get Started For Free:');
                    Navigator.pushNamed(context, '/board3');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF003E18),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Text(
                    'Get Started For Free',
                    style: TextStyle(
                      fontFamily: 'Gotham',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              Container(height: 10),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Already have an account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 18,
                    color: Color(0xFF808080),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
