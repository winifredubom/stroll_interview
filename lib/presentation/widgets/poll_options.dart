
import 'package:flutter/material.dart';
import 'package:stroll_interview/domain/models/poll_option_details.dart';

class PollOptions extends StatelessWidget {
  const PollOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final options = [
      PollOption(
        text: 'The peace in the early mornings',
        icon: Icons.wb_sunny_outlined,
      ),
      PollOption(
        text: 'The magical golden hours',
        icon: Icons.wb_twilight,
      ),
      PollOption(
        text: 'Wind-down time after dinners',
        icon: Icons.nightlight_round,
      ),
      PollOption(
        text: 'The serenity past midnight',
        icon: Icons.dark_mode,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: options.map((option) => _buildOption(option)).toList(),
      ),
    );
  }

  Widget _buildOption(PollOption option) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white.withOpacity(0.2),
        ),
      ),
      child: ListTile(
        leading: Icon(
          option.icon,
          color: Colors.white,
        ),
        title: Text(
          option.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}