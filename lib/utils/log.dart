import 'dart:developer' as developer;

void logError(Object? object, {String? des = ''}) {
  String msg = object.toString();
  developer.log('\x1B[31m❌ ${des} ---logError--- $msg \x1B[0m');
}
