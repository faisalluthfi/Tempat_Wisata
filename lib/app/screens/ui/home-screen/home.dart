import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:travelling/app/widgets/constants.dart';
import 'package:travelling/app/widgets/drawer_menu_widget.dart';
import 'package:travelling/app/widgets/drawer_widget.dart';

class HomePage extends StatelessWidget {
  final VoidCallback openDrawer;
  const HomePage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.alignLeft,
              color: Color(0xff1A3C40),
            ),
            disabledColor: Colors.white,
            onPressed: openDrawer,
          ),
          title: Text('Home Page'),
        ),
        body: Center(
          child: Text(
            "INI HALAMAN HOME",
            style: TextStyle(color: Color(0xff1A3C40), fontSize: 40),
          ),
        ));
  }
}
