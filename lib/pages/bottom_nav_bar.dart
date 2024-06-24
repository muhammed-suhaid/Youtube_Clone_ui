import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_clone_ui/pages/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List<Widget> body = [
    const HomeScreen(),
    const Center(
      child: Text(
        'shorts',
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Center(
      child: Text(
        'add',
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Center(
      child: Text(
        'subscription',
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Center(
      child: Text(
        'you',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      backgroundColor: const Color(0xFF121212),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          backgroundColor: const Color(0xFF121212),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: const TextStyle(color: Colors.white),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/shorts.svg'),
              label: 'Shorts',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/add.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/subscription.svg'),
              label: 'Subscriptions',
            ),
            const BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              label: 'You',
            ),
          ],
        ),
      ),
    );
  }
}
