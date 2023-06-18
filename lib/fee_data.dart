
class FeeData {
  final String  receipNo;
  final String  month;
  final String  date;
  final String  paymentStatus;
  final String  totalAmount;
  final String  btnStatus;

  FeeData(this.receipNo,this.month,this.date,this.paymentStatus,this.totalAmount,this.btnStatus);
  
}

List<FeeData> fee = [
    FeeData('90871', 'November', '8 Jan 2023', 'pending', '900\$', 'PAY NOW'),
    FeeData('90870', 'September', '8 May 2023', 'paid', '1800\$', 'DOWNLOAD'),
    FeeData('908869', 'August', '8 Jun 2023', 'paid', '950\$', 'DOWNLOAD'),
];