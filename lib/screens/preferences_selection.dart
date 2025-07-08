import 'package:flutter/material.dart';

class PreferencesSelectionScreen extends StatefulWidget {
  const PreferencesSelectionScreen({super.key});

  @override
  _PreferencesSelectionScreenState createState() => _PreferencesSelectionScreenState();
}

class _PreferencesSelectionScreenState extends State<PreferencesSelectionScreen> {
  List<bool> selectedPreferences = List.filled(5, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF003E18)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Fitly',
                  style: TextStyle(
                    fontFamily: 'Gotham Rounded',
                    fontSize: 60,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'What are your fitness preferences?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 18,
                    color: Color(0xFF003E18),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 30),
                ...List.generate(5, (index) {
                  List<String> preferences = [
                    'Weight Loss',
                    'Muscle Gain',
                    'Endurance',
                    'Flexibility',
                    'General Fitness'
                  ];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPreferences[index] = !selectedPreferences[index];
                        });
                      },
                      child: Container(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                          color: selectedPreferences[index] ? Color(0xFF003E18).withOpacity(0.1) : Colors.grey[100],
                          border: Border.all(
                            color: selectedPreferences[index] ? Color(0xFF003E18) : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            preferences[index],
                            style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 16,
                              color: selectedPreferences[index] ? Color(0xFF003E18) : Colors.black,
                              fontWeight: selectedPreferences[index] ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                Spacer(),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/options_selection');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF003E18),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
