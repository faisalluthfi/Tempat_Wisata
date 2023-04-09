import 'package:flutter/material.dart';
import 'package:travelling/app/models/draw_item.dart';
import 'package:travelling/app/models/draw_items.dart';
import 'package:travelling/app/screens/ui/about/about.dart';
import 'package:travelling/app/screens/ui/favourite/favorite.dart';
import 'package:travelling/app/screens/ui/home-screen/home.dart';
import 'package:travelling/app/screens/ui/introduction-screen/onsplash.dart';
import 'package:travelling/app/widgets/constants.dart';
import 'package:travelling/app/widgets/drawer_widget.dart';
import 'package:explorer/explorer.dart';

void main() => runApp(const TravellingApp());

class TravellingApp extends StatelessWidget {
  const TravellingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xff1A3C40),
      ),
      home: const SplashScreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen;
  DrawerItem item = DrawerItems.home;
  bool isDragging = false;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void closeDrawer() => setState(() {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1;
        isDrawerOpen = false;
      });

  void openDrawer() => setState(() {
        xOffset = 230;
        yOffset = 150;
        scaleFactor = 0.7;
        isDrawerOpen = true;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(children: [
        buildDrawer(),
        buildPage(),
      ]),
    );
  }

  Widget buildDrawer() => Container(
        width: xOffset,
        child: SafeArea(
          child: DrawerWidget(
            onSelectedItem: (item) {
              setState(() {
                this.item = item;
              });
              closeDrawer();
            },
          ),
        ),
      );

  Widget buildPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDragging = true,
        onHorizontalDragUpdate: (details) {
          if (!isDragging) return;
          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }
          isDragging = false;
        },
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            transform: Matrix4.translationValues(xOffset, yOffset, scaleFactor)
              ..scale(scaleFactor),
            child: AbsorbPointer(
              absorbing: isDrawerOpen,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0),
                child: Container(
                  color: Colors.white,
                  child: getDrawerPage(),
                ),
              ),
            )),
      ),
    );
  }

  Widget getDrawerPage() {
    switch (item) {
      case DrawerItems.favorit:
        return FavouritePage(openDrawer: openDrawer);
      case DrawerItems.about:
        return AboutPage(openDrawer: openDrawer);
      default:
        return HomePage(openDrawer: openDrawer);
    }
  }
}
