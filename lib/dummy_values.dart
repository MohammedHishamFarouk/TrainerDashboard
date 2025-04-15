import 'package:trainer_dashboard/view/core/helpers/functions.dart';

class DummyValues {
  static final List<double> dummyEarnings = [
    23.568,
    56.3215,
    104.54,
    230,
    62.865,
    7.32,
    37.425,
  ];
  static double totalEarnings = dummyEarnings.fold(0, (a, b) => a + b);
  static double maxEarnings = getMax(dummyEarnings);
}
