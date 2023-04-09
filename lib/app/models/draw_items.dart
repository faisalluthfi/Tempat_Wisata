import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'draw_item.dart';

class DrawerItems {
  static const home = DrawerItem(
    title: 'Home',
    icon: FontAwesomeIcons.home,
  );
  static const favorit = DrawerItem(
    title: 'Favourite',
    icon: FontAwesomeIcons.star,
  );
  static const about = DrawerItem(
    title: 'About',
    icon: FontAwesomeIcons.info,
  );

  static final List<DrawerItem> all = [
    home,
    favorit,
    about,
  ];
}
