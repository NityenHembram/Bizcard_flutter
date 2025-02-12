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
                      profileImageWidget()
                    ],
                  ),
                )))));
  }

  Widget profileImageWidget() {
    return Padding(padding: EdgeInsets.all(12),
        child:Container(
        width: 100,
        height: 100,
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
