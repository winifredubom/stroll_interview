import 'package:flutter/material.dart';

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
          // Instructions text row
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
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
          // Action buttons row
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Voice button
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xff8B88EF),
                    width: 2,
                  )
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: onVoicePressed,
                    child: Icon(
                      Icons.mic,
                      color: Color(0xff8B88EF),
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
                  shape: BoxShape.circle,
                  color: Color(0xff8B88EF),
                ),
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