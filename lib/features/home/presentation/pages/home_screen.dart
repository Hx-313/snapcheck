import 'package:flutter/material.dart';
import 'package:snapcheck/common/paddings/paddings.dart';
import 'package:snapcheck/features/home/presentation/pages/dashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  LinearGradient get gradient => const LinearGradient(
        colors: [
          Color(0xff3C8FF4),
          Color(0xff9656ED),
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );

  final screens = [
    Dashboard(),
    Center(child: Text("Search")),
    Center(child: Text("Features")),
    Center(child: Text("Note")),
    Center(child: Text("Profile"))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Container(
        height: Paddings.reponsiveHeight(context, 64),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black12,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            elevation: 5,
            enableFeedback: false,
            unselectedLabelStyle: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Inter",
            ),
            unselectedItemColor: Colors.grey,
            selectedItemColor: Color.fromARGB(255, 156, 106, 225),
            backgroundColor: Colors.white,
            showUnselectedLabels: true,
            currentIndex: index,
            useLegacyColorScheme: false,
            selectedLabelStyle: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Inter",
            ),
            onTap: (v) => setState(() => index = v),
            items: [
              _navItem(
                icon: 'assets/images/navigationBottom/home.png',
                label: 'Home',
                i: 0,
              ),
              _navItem(
                icon: 'assets/images/navigationBottom/search.png',
                label: 'Search',
                i: 1,
              ),
              _navItem(
                icon: 'assets/images/navigationBottom/features.png',
                label: 'features',
                i: 2,
              ),
              _navItem(
                icon: 'assets/images/navigationBottom/note.png',
                label: 'Note',
                i: 3,
              ),
              _navItem(
                icon: 'assets/images/navigationBottom/menu 1.png',
                label: 'Profile',
                i: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _navItem({
    required String icon,
    required String label,
    required int i,
  }) {
    final bool selected = index == i;

    return BottomNavigationBarItem(
      label: label,
      icon: selected
          ? ShaderMask(
              shaderCallback: (bounds) => gradient.createShader(bounds),
              blendMode: BlendMode.srcIn,
              child: Image.asset(
                icon,
                width: 26,
                height: 26,
                color: Colors.white,
              ),
            )
          : Image.asset(
              icon,
              width: 26,
              height: 26,
              color: Colors.grey,
            ),
    );
  }
}
