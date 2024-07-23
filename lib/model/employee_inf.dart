import 'package:work_in_time/model/day_off.dart';
import 'package:work_in_time/model/gender.dart';
import 'package:work_in_time/model/workload.dart';

class  EmployeeInf {
  String office;
  String name;
  int wage;
  Gender gender;
  DayOff dayOff;
  Workload workload;
  String? age;
  String? imageURL;
  String? email;
  int? entryAtCompany;

  EmployeeInf({
    required this.name,
    required this.office,
    required this.gender,
    required this.wage,
    required this.dayOff,
    required this.workload,
    this.email,
    this.imageURL,
    this.entryAtCompany,
    this.age,
  });
} 
