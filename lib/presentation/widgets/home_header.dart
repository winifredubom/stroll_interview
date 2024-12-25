import 'package:flutter/material.dart';
import 'package:stroll_interview/utils/app_colors.dart';
import 'package:stroll_interview/utils/responsive_helper.dart';

class StoryHeader extends StatelessWidget {
  final String title;

  const StoryHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: ResponsiveHelper.getFontSize(context, 34),
                        fontWeight: FontWeight.bold,
                        color: ColorPaths.primaryColor),
                  ),
                  const SizedBox(width: 12),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: ColorPaths.primaryColor,
                    size: 25,
                  ),
                ],
              ),
               Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const  Icon(
                          Icons.timer_outlined,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '22h 00m',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: ResponsiveHelper.getFontSize(context, 12),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       const  Icon(
                          Icons.person_outline_sharp,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          '103',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: ResponsiveHelper.getFontSize(context, 12),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
