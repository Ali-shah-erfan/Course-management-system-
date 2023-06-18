class DataSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DataSheet(this.date, this.monthName, this.subjectName, this.dayName, this.time);
  
}

 List<DataSheet> datasheet = [
     DataSheet(11, 'JAN', 'Computer Science', 'Monday', '9:00am'),
     DataSheet(11, 'JAN', 'Biology', 'Tuesday', '10:00am'),
     DataSheet(11, 'JAN', 'Chemistry', 'Wednsday', '9:30am'),
     DataSheet(11, 'JAN', 'Physics', 'Thursday', '11:00am'),
     DataSheet(11, 'JAN', 'Mathematics', 'friday', '9:00am'),
     DataSheet(11, 'JAN', 'Urdu', 'Saturday', '11:00am'),
   ];