//DateFormat('yyyy-MM-dd – kk:mm').format(now)
//state.countryCovidDataList[i].Date
import 'package:intl/intl.dart';

class DateFunction {
  static String formatDate(String date) {
    DateTime? now = DateTime.tryParse(date);
    String formattedDate = DateFormat('dd-MM-yyyy / kk:mm a').format(now!);
    return formattedDate;
  }
}
