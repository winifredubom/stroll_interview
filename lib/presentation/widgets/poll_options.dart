
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stroll_interview/domain/models/poll_option_details.dart';
import 'package:stroll_interview/domain/providers/poll_providers.dart';
import 'package:stroll_interview/utils/responsive_helper.dart';


class PollOptions extends ConsumerWidget {
  const PollOptions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedPollOptionProvider);
    
    final options = [
      PollOption(
        text: 'The peace in the\n early mornings',
      ),
      PollOption(
        text: 'The magical\n golden hours',
      ),
      PollOption(
        text: 'Wind-down time\n after dinners',
      ),
      PollOption(
        text: 'The serenity past\n midnight',
      ),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
  horizontal: ResponsiveHelper.defaultPadding(context)
),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: ResponsiveHelper.isMobile(context) ? 2.5 : 3.5,
        children: options.asMap().entries.map((entry) {
          final index = entry.key;
          final option = entry.value;
          final isSelected = index == selectedIndex;
          
          return GestureDetector(
            onTap: () {
              ref.read(selectedPollOptionProvider.notifier).selectOption(index);
            },
            child: _buildOption(option, isSelected, index),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildOption(PollOption option, bool isSelected, int index) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected 
              ? const Color(0xff8B88EF).withOpacity(0.2)  
              : const Color(0xff232A2E),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected
                ? const Color(0xff8B88EF).withOpacity(0.8)
                : Colors.white.withOpacity(0.2),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected ? const Color(0xff8B88EF) : Colors.transparent,
                  border: Border.all(
                    color: isSelected ? const Color(0xff8B88EF) : Colors.white,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    String.fromCharCode(65 + index),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
               ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  option.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}