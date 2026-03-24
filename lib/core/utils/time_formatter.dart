import 'package:intl/intl.dart';

class TimeFormatter {
  TimeFormatter._();

  /// UTC -> 기기 로컬 시간대 변환
  static String toLocal(DateTime utcTime,
      {String pattern = 'yyyy.MM.dd HH:mm'}) {
    return DateFormat(pattern).format(utcTime.toLocal());
  }

  /// 상대 시간 (방금 전, N분 전, ...)
  static String toRelative(DateTime utcTime) {
    final diff = DateTime.now().toUtc().difference(utcTime);
    if (diff.inSeconds < 60)  return '방금 전';
    if (diff.inMinutes < 60)  return '${diff.inMinutes}분 전';
    if (diff.inHours   < 24)  return '${diff.inHours}시간 전';
    if (diff.inDays    < 7)   return '${diff.inDays}일 전';
    return toLocal(utcTime, pattern: 'yyyy.MM.dd');
  }
}