import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stroll_interview/presentation/widgets/bottom_bar.dart';
import 'package:stroll_interview/presentation/widgets/home_header.dart';
import 'package:stroll_interview/presentation/widgets/poll_footer.dart';
import 'package:stroll_interview/presentation/widgets/poll_options.dart';
import 'package:stroll_interview/presentation/widgets/poll_question.dart';
import 'package:stroll_interview/utils/app_images.dart';
import 'package:stroll_interview/utils/responsive_helper.dart';

class StoryScreen extends ConsumerWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AssetPaths.bgImage,
            fit: BoxFit.cover,
            height: ResponsiveHelper.getHeight(context, 500),
            width: double.infinity,
          ),
          SafeArea(
            child: Column(
              children: [
                const Center(
                  child: StoryHeader(
                    title: 'Stroll Bonfire',
                  ),
                ),
                const Spacer(),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.7),
                        Colors.black,
                      ],
                      stops: const [0.0, 0.2, 0.5],
                    ),
                  ),
                  child: Column(
                    children: [
                      const PollQuestion(
                        username: 'Angelina, 28',
                        question: 'What is your favorite time of the day?',
                        userAnswer:
                            '“Mine is definitely the peace in the morning.”',
                      ),
                      const SizedBox(height: 10),
                      const PollOptions(),
                      const SizedBox(height: 20),
                      PollFooter(
                        onVoicePressed: () {},
                        onNextPressed: () {},
                      ),
                      const CustomBottomNavigationBar(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
