import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travelling/app/models/draw_item.dart';
import 'package:travelling/app/models/draw_items.dart';

class DrawerWidget extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelectedItem;

  const DrawerWidget({
    Key? key,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 32, 16, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildDrawerItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context) {
    return Column(
      children: DrawerItems.all
          .map(
            (item) => ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 8,
              ),
              leading: Icon(
                item.icon,
                color: Colors.white,
                size: 22,
              ),
              title: Text(
                item.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                onSelectedItem(item);
              },
            ),
          )
          .toList(),
    );
  }
}
