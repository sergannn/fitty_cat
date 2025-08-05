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
      body: Container(
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
                    title: 'Start tracking',
                    description: 'Monitor your fitness journey with detailed charts and insights to keep you motivated.',
                    imagePath: 'image2.jpg',
                  ),
                  _buildPage(
                    title: 'Log your meal',
                    description: 'Quickly add what you eat to stay on track. The more you log, the better your insights.',
                    imagePath: 'image.jpg', // Update with your actual image path
                  ),
               
                  _buildPage(
                    title: 'Personalized plans',
                    description: 'Get customized workout and meal plans tailored to your goals and preferences.',
                    imagePath: 'image3.jpg',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
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
                          Navigator.pushNamed(context, '/auth');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF003E18),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        //_currentPage < 2 ? 'Next' :
                         'Get Started For Free',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage({required String title, required String description, required String imagePath}) {
    return Column(
      children: [
        // Image with overlay
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Full width image
            Image.asset('assets/images/$imagePath',
              width: double.infinity,
              height: 449, // Adjust height as needed
              fit: BoxFit.cover,
            ),
            // Dark overlay for better text visibility
            Container(
              height: 449,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            // Fitly text
            const Positioned(
              top: 90, // Adjust vertical position
              left: 0,
              right: 0,
              child: Text(
                'Fitly',

                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            // Dots indicator
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPage == index 
                          ? Colors.white 
                          : Colors.white.withOpacity(0.5),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
        // Content below image
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                description,
                textAlign: TextAlign.center,
                style:  TextStyle(
                  fontFamily: 'gotham',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0, 62, 24, 1),
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}