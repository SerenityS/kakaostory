import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class Utils {
  static String getTimeString(DateTime createdAt) {
    initializeDateFormatting();
    String dateText = createdAt.toString();
    DateFormat dateFormat = DateFormat("yyy.MM.d aa hh:mm", "ko");

    DateTime now = DateTime.now().add(const Duration(hours: 9));
    Duration diff = now.difference(createdAt);

    if (diff.inSeconds < 60) {
      dateText = "방금 전";
    } else if (diff.inMinutes < 60) {
      dateText = "${diff.inMinutes}분 전";
    } else if (diff.inHours < 24) {
      dateText = "${diff.inHours}시간 전";
    } else {
      dateText = dateFormat.format(createdAt);
    }
    return dateText;
  }
}
