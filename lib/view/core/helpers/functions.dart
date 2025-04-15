import 'package:trainer_dashboard/dummy_values.dart';
import 'package:trainer_dashboard/view/core/components/daily_stat.dart';
import 'package:trainer_dashboard/view/core/constants/constants.dart';

double roundHundredths(double value) {
  return (value * 100).round() / 100;
}

List<DailyStat> getDailyStats() => List.generate(7, (index) {
  if (DummyValues.dummyEarnings.length < 7 &&
      DummyValues.dummyEarnings.isNotEmpty) {
    DummyValues.dummyEarnings.add(0);
  }
  return DailyStat(
    day: Constants.days[index],
    height:
        DummyValues.dummyEarnings.isEmpty
            ? 0
            : 80 * (DummyValues.dummyEarnings[index] / DummyValues.maxEarnings),
    earnings: roundHundredths(
      DummyValues.dummyEarnings.isEmpty ? 0 : DummyValues.dummyEarnings[index],
    ),
  );
});

double getMax(List<double> list) {
  return list.reduce((a, b) => a > b ? a : b);
}
