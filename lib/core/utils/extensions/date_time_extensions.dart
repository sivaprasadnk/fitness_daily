import 'package:fitness_daily/core/utils/extensions/int_extensions.dart';

extension DateTimeExtensions on DateTime {
  String displaydate() {
    var monthValue = month.monthDisplayValue();
    var value = "$monthValue $day , $year";

    return value;
  }
}
