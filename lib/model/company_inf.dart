import 'package:work_in_time/model/coins.dart';

class CompanyInf {
  String? image;
  String nameOfCompany;
  Coins? baseCoin;
  String? totalWorkload;
  CompanyInf({
    required this.nameOfCompany,
    this.image,
    this.baseCoin,
    this.totalWorkload,
  });
  
}