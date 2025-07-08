import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  _buildPage(
                    title: 'Log your meal',
                    description: 'Quickly add what you eat to stay on track. The more you log, the better your insights.',
                    imagePath: 'asset/image.jpg',
                  ),
                  _buildPage(
                    title: 'Track your progress',
                    description: 'Monitor your fitness journey with detailed charts and insights to keep you motivated.',
                    imagePath: 'asset/image.jpg',
                  ),
                  _buildPage(
                    title: 'Personalized plans',
                    description: 'Get customized workout and meal plans tailored to your goals and preferences.',
                    imagePath: 'asset/image.jpg',
                  ),
                ],
              ),
            ),
            _buildDotsIndicator(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_currentPage < 2) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          debugPrint('Get Started For Free:');
                          Navigator.pushNamed(context, '/auth');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF003E18),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Text(
                        _currentPage < 2 ? 'Next' : 'Get Started For Free',
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
          ],
        ),
      ),
    );
  }

  Widget _buildPage({required String title, required String description, required String imagePath}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.bottomCenter, // Align text to bottom center
            children: [
              SizedBox(
                height: 480, // Установите желаемую высоту
                child: Image.asset(
                  imagePath,
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
              title,
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
              description,
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
        ],
      ),
    );
  }

  Widget _buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          height: 10.0,
          width: _currentPage == index ? 30.0 : 10.0,
          decoration: BoxDecoration(
            color: _currentPage == index ? Color(0xFF003E18) : Color(0xFF808080),
            borderRadius: BorderRadius.circular(5.0),
          ),
        );
      }),
    );
  }
}
