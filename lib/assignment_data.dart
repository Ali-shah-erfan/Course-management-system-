class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate, this.lastDate, this.status);
}

List<AssignmentData>assignment = [
 AssignmentData('Biology', 'Red Blood Cells', '17 Now 2023', '20 Now 2023', 'Pending'),
  AssignmentData('Physics', 'Bohr Theory', '22 Now 2023', '24 Now 2023', 'peding'),
  AssignmentData('Chemistry', 'Organic Chemistry', '10 Now 2023', '13 Now 2023', 'Submitted'),
  AssignmentData('Mathematics', 'Algebra', '27 Now 2023', '31 Now 2023', 'Pending'),
];