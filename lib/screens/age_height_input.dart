import 'package:flutter/material.dart';

class AgeHeightInputScreen extends StatelessWidget {
  const AgeHeightInputScreen({super.key});

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
                  'Tell us a bit about yourself',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 18,
                    color: Color(0xFF003E18),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 300,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'How old are you?',
                      hintStyle: TextStyle(color: Colors.grey),
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'How tall are you? (cm)',
                      hintStyle: TextStyle(color: Colors.grey),
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/additional_questions');
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
