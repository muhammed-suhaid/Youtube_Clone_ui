import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 70,
                      child: Image.asset(
                        'assets/images/main logo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/cast.svg'),
                    const SizedBox(width: 20),
                    SvgPicture.asset('assets/icons/notification.svg'),
                    const SizedBox(width: 20),
                    const Icon(Icons.search),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
