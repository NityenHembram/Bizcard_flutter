import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> projectList = [
    "Project 1",
    "Project 2",
    "Project 3",
    "Project 4",
    "Project 5",
    "Project 6",
    "Project 7",
    "Project 8",
    "Project 9",
    "Project 10",
    "Project 11",
    "Project 12"
  ];
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(12),
                child: SizedBox.expand(
                    child: Card(
                  elevation: 5,
                  color: Colors.white,
                  // Background color
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      profileImageWidget(100, 100),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.lightBlue,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nityen Hembram',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 0, 0, 255),
                                  fontWeight: FontWeight.bold)),
                          Text('Android Flutter Programming'),
                          Text('NDrodi'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                              backgroundColor: Color.fromRGBO(0, 0, 255, 255),
                              foregroundColor: Colors.white),
                          child: Text('Portfolio')),
                      SizedBox(
                        height: 15,
                      ),
                      isVisible ? content(): SizedBox.shrink(),
                    ],
                  ),
                )))));
  }

  Widget content() {
    return Padding(
        padding: EdgeInsets.all(12),
        child: Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400, // Shadow color
                    spreadRadius: 2, // Spread of shadow
                    blurRadius: 5,
                  ) // Blur effect
                ]),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
              child:
            ListView.builder(
                itemCount: projectList.length,
                itemBuilder: (context, index) {
                  String projectName = projectList[index];
                  return Padding(
                      padding: EdgeInsets.all(5),
                      child: Card(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          profileImageWidget(50, 50),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(projectName, style: TextStyle(
                                fontWeight: FontWeight.bold,color: Colors.black
                              ),),
                              Text("This is my project and i am proud of it",style: TextStyle(
                                  fontWeight: FontWeight.bold,color: Colors.grey
                              ))
                            ],
                          )
                        ],
                      )));
                }))));
  }

  Widget profileImageWidget(double width, double height) {
    return Padding(
        padding: EdgeInsets.all(12),
        child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blue, width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400, // Shadow color
                  spreadRadius: 2, // Spread of shadow
                  blurRadius: 5, // Blur effect
                  offset: Offset(0, 3), // Shadow position (X, Y)
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                "assets/profile_image.jpg",
                fit: BoxFit.cover,
              ),
            )));
  }
}

// ---------Solution 1-----------
// return Scaffold(
// body: AnnotatedRegion<SystemUiOverlayStyle>(
// value: SystemUiOverlayStyle.dark, // Change color if needed
// child: SafeArea(
// child: Column(
// children: [
// Text("Content here"),
// ],
// ),
// ),
// ),
// );

// ----------SomeSolution---------

// // Set status bar color
// SystemChrome.setSystemUIOverlayStyle(
//   SystemUiOverlayStyle.dark.copyWith(
//     statusBarColor: Colors.transparent, // Make status bar transparent
//     statusBarIconBrightness: Brightness.dark, // Dark icons for light background
//     statusBarBrightness: Brightness.light, // Needed for iOS
//   ),
// );
