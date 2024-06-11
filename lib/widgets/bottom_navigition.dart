import 'package:flutter/material.dart';
import '../features/home_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class BottomNavigition extends StatefulWidget {
  const BottomNavigition({super.key});

  @override
  State<BottomNavigition> createState() => _BottomNavigitionState();
}

class _BottomNavigitionState extends State<BottomNavigition> {
  @override
  int pageIndex = 0;
  List Pages = [
    const HomeScreen(),
    const Center(
        child: Text(
      'Conning soon ...',
      style: TextStyle(
          fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white),
    )),
    const Center(
        child: Text(
      'Conning soon ...',
      style: TextStyle(
          fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white),
    )),
    const Center(
        child: Text(
      'Conning soon ...',
      style: TextStyle(
          fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white),
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Pages[pageIndex],
        bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 19, 33, 42),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Color.fromARGB(255, 19, 33, 42).withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.blueAccent,
              color: Colors.black,
              tabs: [
                const GButton(
                  iconColor: Colors.blueAccent,
                  icon:Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  iconColor: Colors.blueAccent,
                  icon: Icons.download,
                  text: 'Download',
                ),
                GButton(
                  iconColor: Colors.blueAccent,
                  icon: Icons.menu,
                  text: 'Menu',
                ),
                GButton(
                  iconColor: Colors.blueAccent,
                  icon: Icons.settings_outlined,
                  text: 'Setting',
                ),
              ],
              selectedIndex: pageIndex,
              onTabChange: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
            ),
          ),
        ),
        ),
      );
  }
}
