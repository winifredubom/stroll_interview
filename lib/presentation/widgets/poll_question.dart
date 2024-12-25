import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PollQuestion extends StatelessWidget {
  final String username;
  final String question;
  final String userAnswer;

  const PollQuestion({
    super.key,
    required this.username,
    required this.question,
    required this.userAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Circle Avatar
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('asset/Joey 2.png'),
              radius: 24,
            ),
          ),
          const SizedBox(width: 16),
          // Text Column
          Expanded(
            child: Column(
              children: [
                Text(
                  username,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  question,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    userAnswer,
                    style: GoogleFonts.inter(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                    ),
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