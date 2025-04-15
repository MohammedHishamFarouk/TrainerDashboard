import 'package:trainer_dashboard/view/core/components/daily_stat.dart';
import 'package:trainer_dashboard/view/core/constants/constants.dart';

double roundHundredths(double value) {
  return (value * 100).round() / 100;
}

List<DailyStat> getDailyStats() => List.generate(7, (index) {
  if (Constants.dummyEarnings.length < 7 &&
      Constants.dummyEarnings.isNotEmpty) {
    Constants.dummyEarnings.add(0);
  }
  return DailyStat(
    day: Constants.days[index],
    height:
        Constants.dummyEarnings.isEmpty
            ? 0
            : 80 * (Constants.dummyEarnings[index] / Constants.maxEarnings),
    earnings: roundHundredths(
      Constants.dummyEarnings.isEmpty ? 0 : Constants.dummyEarnings[index],
    ),
  );
});

double getMax(List<double> list) {
  return list.reduce((a, b) => a > b ? a : b);
}
