

class DateConvertStruct {
  int dateInt;
  String dateStr;
  DateConvertStruct({this.dateInt,this.dateStr});
}

class DateConvert {

  static DateConvertStruct convertWeek(String weekDay, String prefixion) {

    prefixion = prefixion == null ? "周" : prefixion;

    try {
      int weekDayInt = int.parse(weekDay);

      if (weekDayInt is int) {
        weekDay = weekDayInt.toString();
      }
    } catch (e) {}

      String weekStr = "";
      int weekInt = 0;

      switch(weekDay) {
        case "Mon": case "Monday":case "1": weekStr = "$prefixion一"; weekInt = 1; break;
        case "Tue": case "Tues": case "Tuesday":case "2": weekStr = "$prefixion二"; weekInt = 2; break;
        case "Wed": case "Wednesday":case "3": weekStr = "$prefixion三"; weekInt = 3; break;
        case "Thu": case "Thur": case "Thursday":case "4": weekStr = "$prefixion四"; weekInt = 4; break;
        case "Fri": case "Friday":case "5": weekStr = "$prefixion五"; weekInt = 5; break;
        case "Sat": case "Saturday":case "6": weekStr = "$prefixion六"; weekInt = 6; break;
        case "Sun": case "Sunday":case "7": weekStr = "$prefixion日"; weekInt = 7; break;
      }

    return DateConvertStruct(dateInt: weekInt,dateStr: weekStr);
  }

  static DateConvertStruct convertMonth(String month,String suffix) {
    String monthStr;
    int monthInt = 0;
try {
  int m = int.parse(month);
  if (m is int) {
    month = m.toString();
  }
} catch (e) {}

    switch (month) {
      case "January": case "Jan":case "1": monthStr = "一$suffix"; monthInt = 1; break;
      case "February": case "Feb":case "2": monthStr = "二$suffix"; monthInt = 2; break;
      case "March": case "Mar":case "3": monthStr = "三$suffix"; monthInt = 3; break;
      case "April": case "Apr":case "4": monthStr = "四$suffix"; monthInt = 4; break;
      case "May": case "May":case "5": monthStr = "五$suffix"; monthInt = 5; break;
      case "June": case "Jun":case "6": monthStr = "六$suffix"; monthInt = 6; break;
      case "July": case "Jul":case "7": monthStr = "七$suffix"; monthInt = 7; break;
      case "August": case "Aug":case "8": monthStr = "八$suffix"; monthInt = 8; break;
      case "Sep": case "September": case "Sept":case "9": monthStr = "九$suffix"; monthInt = 9; break;
      case "October": case "Oct":case "10": monthStr = "十$suffix"; monthInt = 10; break;
      case "November": case "Nov":case "11": monthStr = "十一$suffix"; monthInt = 11; break;
      case "December": case "Dec":case "12": monthStr = "十二$suffix"; monthInt = 12; break;
      default: monthStr = ""; monthInt = 0; break;
    }
    return DateConvertStruct(dateInt: monthInt, dateStr: monthStr);
  }
}

