import 'package:flutter/material.dart';
import 'package:travelling/app/widgets/navdrawer.dart';
import 'package:travelling/app/widgets/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Constants.secondaryColor),
      ),
      body: const Center(),
    );
  }
}
