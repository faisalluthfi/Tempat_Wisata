import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavouritePage extends StatelessWidget {
  final VoidCallback openDrawer;

  const FavouritePage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(
          "Halaman Favorite",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text(
          "HALAMAN FAVORIT",
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
    );
  }
}
