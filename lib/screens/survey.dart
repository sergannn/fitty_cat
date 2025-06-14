import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

class SurveyScreen extends StatefulWidget {
  @override
  State<SurveyScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SurveyScreen> {
  String name = "Alex";
  String selectedUnit = 'Ft';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.account_circle, color: Color(0xFF003E18)),
            SizedBox(width: 8),
            Text(name, style: TextStyle(color: Color(0xFF003E18))),
            SizedBox(width: 8),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 100, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'How old are you?',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gotham',
                ),
              ),
            ),
            SizedBox(height: 10),

            Center(
              child: Container(
                width: 350,
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 8.0),
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Age',
                      hintStyle: TextStyle(color: Colors.grey),
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            Center(
              child: Text(
                'How tall are you?',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gotham',
                ),
              ),
            ),
            SizedBox(height: 10),

            Center(
              child: Container(
                width: 350,
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 8.0),
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Height',
                            hintStyle: TextStyle(color: Colors.grey),
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      SizedBox(width: 12),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedUnit = 'Ft';
                          });
                        },
                        child: Text(
                          'Ft',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontFamily: 'Gotham',
                            decoration:
                                selectedUnit == 'Ft'
                                    ? TextDecoration.underline
                                    : TextDecoration.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '|',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontFamily: 'Gotham',
                        ),
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedUnit = 'Cm';
                          });
                        },
                        child: Text(
                          'Cm',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontFamily: 'Gotham',
                            decoration:
                                selectedUnit == 'Cm'
                                    ? TextDecoration.underline
                                    : TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Spacer(),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: SizedBox(
                  height: 61,
                  width: 350,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[900],
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Next', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/*
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
      storage: DevicePreviewStorage.none(), 
    ),
  );
}

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
*/