
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedPollOptionNotifier extends StateNotifier<int?> {
  SelectedPollOptionNotifier() : super(null);

  void selectOption(int index) {
    state = index;
  }
}

final selectedPollOptionProvider =
    StateNotifierProvider<SelectedPollOptionNotifier, int?>((ref) {
  return SelectedPollOptionNotifier();
});