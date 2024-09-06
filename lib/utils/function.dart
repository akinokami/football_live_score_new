import 'package:intl/intl.dart';

String formatDate(DateTime date) {
  final format = DateFormat('yyyy-MM-ddTHH:mm:ss');
  return format.format(date);
}

String getTime(String sDate) {
  DateTime parsedDate = DateTime.parse(
    '${sDate.substring(0, 4)}-${sDate.substring(4, 6)}-${sDate.substring(6, 8)}T${sDate.substring(8, 10)}:${sDate.substring(10, 12)}:${sDate.substring(12, 14)}',
  );
  return DateFormat('HH:mm').format(parsedDate);
}
