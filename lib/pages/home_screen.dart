import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_clone_ui/components/shorts_card.dart';
import 'package:youtube_clone_ui/components/video_card.dart';
import 'package:youtube_clone_ui/data/dummy_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final shortsData = dummyData.where((data) => data.isShorts).toList();
    final videoData = dummyData.where((data) => !data.isShorts).toList();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
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
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image.asset('assets/images/shorts.png'),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Shorts',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ShortsCard(shortsData: shortsData),
              const SizedBox(height: 10),
              VideoCard(videoData: videoData), 
            ],
          ),
        ),
      ),
    );
  }
}
