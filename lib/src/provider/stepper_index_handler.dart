/// /*** Uttam kumar mitra ***/
/// create date 04/04/2023; 11:41 PM
///
///
///
///
///
import 'package:stepper_a/src/provider/stepper_provider.dart';

/// this class for stepper index calculation
class StepperIndex {
  final StepperNotifier notifier;
  StepperIndex({required this.notifier});

  /// this method  using  for stepper forward index update.
  bool next(int x, int y) {
    if (x < y) {
      notifier.currentIndex = (x + 1);
      return true;
    } else {
      notifier.currentIndex = x;
      return false;
    }
  }

  /// this method using for stepper previous index update
  bool back(int x) {
    if (x > 0) {
      notifier.currentIndex = (x - 1);
      return true;
    } else {
      notifier.currentIndex = x;
      return false;
    }
  }
}
