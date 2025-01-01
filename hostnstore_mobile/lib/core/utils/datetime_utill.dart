import 'package:intl/intl.dart';

class DateTimeUtil {
  static String getStringdatenow() {
    var dateParse = DateTime.now();
    String date = "${dateParse.day}/${dateParse.month}/${dateParse.year}";
    return date;
  }

  static String getStringCollectiondatenow() {
    var dateParse = DateTime.now();
    String date = "${dateParse.day}/${dateParse.month}/${dateParse.year}";
    return date;
  }

  static String getStringdatetimenow() {
    String date = DateFormat.yMd().add_jm().format(DateTime.now()).toString();
    return date;
  }

  static String getStringdatetime(DateTime dateTime) {
    String date = DateFormat.yMd().add_jm().format(dateTime).toString();
    return date;
  }

  static DateTime convertDatetime(String date) {
    var datetime = DateFormat('d/M/yyyy').parse(date);
    print(datetime);
    return datetime;
  }

  static String getDateTimeId() {
    return DateTime.now()
        .toString()
        .replaceAll("-", "")
        .replaceAll(":", "")
        .replaceAll(" ", "")
        .replaceAll(".", "");
  }

  static String formatDateWithSuffix(DateTime date) {
    String day = DateFormat('d').format(date);
    String daySuffix;

    if (day.endsWith('1') && day != '11') {
      daySuffix = 'st';
    } else if (day.endsWith('2') && day != '12') {
      daySuffix = 'nd';
    } else if (day.endsWith('3') && day != '13') {
      daySuffix = 'rd';
    } else {
      daySuffix = 'th';
    }

    String formattedDate = DateFormat('MMMM d').format(date) +
        daySuffix +
        DateFormat(' yyyy').format(date);
    return formattedDate;
  }

  static String formatToNotificationDateStr(DateTime dateTime) {
    DateTime now = DateTime.now();
    Duration difference = now.difference(dateTime);

    if (difference < const Duration(minutes: 1)) {
      return 'Just now';
    } else if (difference < const Duration(hours: 1)) {
      int minutes = difference.inMinutes;
      return '$minutes minute${minutes == 1 ? '' : 's'} ago';
    } else if (difference < const Duration(days: 1)) {
      int hours = difference.inHours;
      return '$hours hour${hours == 1 ? '' : 's'} ago';
    } else if (difference < const Duration(days: 2)) {
      return 'Yesterday';
    } else if (difference < const Duration(days: 20)) {
      int days = difference.inDays;
      return '$days day${days == 1 ? '' : 's'} ago';
    } else {
      return DateFormat('dd MMM').format(dateTime);
    }
  }
}
