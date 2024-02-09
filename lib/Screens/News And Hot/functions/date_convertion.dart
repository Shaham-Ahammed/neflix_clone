import 'package:intl/intl.dart';

List<String> formattedDates = [];
List<String> month = [];
List<String> dates = [];
formatDate(String dateString) {
  
  DateTime date = DateTime.parse(dateString);

 
  String formattedDate = DateFormat('MMM dd').format(date);
  List<String> mon = formattedDate.split(" ");
  month.add(mon[0]);
  dates.add(mon[1]);
  formattedDates.add(formattedDate);
}
