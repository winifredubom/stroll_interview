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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User info row
          Row(children: [
            
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage('asset/Joey 2.png'),
                  radius: 20,
                ),
              ),
              const SizedBox(width: 8),
             Text(
                  username,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              
            ],
          ),
          const SizedBox(height: 12),
          // Question text
          Text(
            question,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          // User's answer with italic style
          Text(
            '"$userAnswer"',
            style: GoogleFonts.inter(
              color: Colors.white.withOpacity(0.7),
              fontSize: 14,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}