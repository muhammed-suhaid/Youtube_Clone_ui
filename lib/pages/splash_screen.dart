import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/pages/bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Center(
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.srcATop,
          ),
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
