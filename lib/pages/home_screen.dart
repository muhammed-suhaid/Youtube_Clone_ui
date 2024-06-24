import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_clone_ui/data/dummy_data.dart';

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
                SizedBox(
                  height: 35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      return Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: index == 1 ? Colors.white : Colors.grey[800],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: index == 0
                            ? SvgPicture.asset(category)
                            : Text(
                                category,
                                style: TextStyle(
                                  color:
                                      index == 1 ? Colors.black : Colors.white,
                                ),
                              ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
