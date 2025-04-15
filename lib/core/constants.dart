import 'helpers/functions.dart';

class Constants {
  static const List<String> days = [
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
  ];
  static final List<double> dummyEarnings = [
    23.568,
    56.3215,
    104.54,
    230,
    62.865,
    7.32,
    37.425,
  ];
  static double totalEarnings = Constants.dummyEarnings.fold(
    0,
    (a, b) => a + b,
  );
  static double maxEarnings = getMax(Constants.dummyEarnings);
}
