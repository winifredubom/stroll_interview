import 'package:flutter/material.dart';
import 'package:stroll_interview/utils/app_colors.dart';
import 'package:stroll_interview/utils/responsive_helper.dart';

class PollFooter extends StatelessWidget {
  final VoidCallback? onVoicePressed;
  final VoidCallback? onNextPressed;

  const PollFooter({
    super.key,
    this.onVoicePressed,
    this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Pick your option.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'See who has a similar mind.',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: ResponsiveHelper.getWidth(context, 40),
                height: ResponsiveHelper.getHeight(context, 40),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorPaths.bottomColor,
                      width: 2,
                    )),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: onVoicePressed,
                    child: const Icon(
                      Icons.mic,
                      color: ColorPaths.bottomColor,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: ColorPaths.bottomColor),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 20,
                  ),
                  onPressed: onNextPressed,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
