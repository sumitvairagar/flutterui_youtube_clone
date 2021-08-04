import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/widgets/video_card.dart';
import 'package:flutter_youtube_ui/widgets/widgets.dart';

import '../data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index){
                  final video = videos[index];
                  return VideoCard(video: video);
                },
              childCount: videos.length,
            ),
          )
        ],
      ),
    );
  }
}
