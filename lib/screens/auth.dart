import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:sign_button/sign_button.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AuthScreen> {
  String name = "Alex";
  String selectedUnit = 'Ft';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
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
      ),*/
      body: Padding(
        padding: EdgeInsets.only(top: 100, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Fitly",  style: TextStyle(
                   fontSize: 60, // Adjust font size
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gotham',
                ),)),
            SizedBox(height: 20,),
            Center(
              child: Text(
                'Get Fit. Stay Fit. Live Fit.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gotham',
                ),
              ),
            ),
              SizedBox(height: 20,),
                 SignInButton(
                width: 300,
              buttonSize: ButtonSize.large,
              //imagePosition: ImagePosition.right,
              buttonType: ButtonType.appleDark,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {
                setState(() {
                  //    _buttonClick = "appleDark";
                });
              },
            ),
              SizedBox(height: 10),
            SignInButton(
                width: 300,
              buttonSize: ButtonSize.large,
              //imagePosition: ImagePosition.right,
              buttonType: ButtonType.googleDark,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {
                setState(() {
                  //  _buttonClick = "apple";
                });
              },
            ),
          
         
            SizedBox(height: 10),
            Center(
              child: Container(
                width: 300,
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
                      hintText: 'email',
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
              child: Container(
                width: 300,
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
                            hintText: 'password',
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
       Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: SizedBox(
                  height: 61,
              width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[900],
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/name_input');
                    },
                    child: Text('Continue', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
            Spacer(),

     Center(child:Text("terms"))
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
