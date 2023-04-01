import 'package:flutter/material.dart';
import 'package:travelling/app/screens/ui/introduction-screen/onsplash.dart';

void main() => runApp(TravellingApp());

class TravellingApp extends StatelessWidget {
  const TravellingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
