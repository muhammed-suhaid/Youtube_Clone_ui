import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final List videoData;
  const VideoCard({
    super.key,
    required this.videoData,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: videoData.length,
      itemBuilder: (context, index) {
        final data = videoData[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: Image.asset(
                  data.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(data.profilePhoto),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            data.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '${data.accountName} • ${data.views} • ${data.uploadedTime}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Icon(Icons.more_vert),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
