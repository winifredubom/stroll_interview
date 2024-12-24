import 'package:flutter/material.dart';

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
              // Title row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffB3ADF6),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xffB3ADF6),
                    size: 25,
                  ),
                ],
              ),
             const Center(
               child:  Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.timer_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '22h 00m',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                 SizedBox(width: 12,),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.person_outline_sharp,
                      color: Colors.white,
                      size: 16,
                    ),
                    const SizedBox(width: 2),
                    const Text(
                      '103',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
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