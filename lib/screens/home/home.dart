import 'package:flutter/material.dart';
import 'package:work_in_time/model/company_inf.dart';
import 'package:work_in_time/model/day_off.dart';
import 'package:work_in_time/model/employee_inf.dart';
import 'package:work_in_time/model/gender.dart';
import 'package:work_in_time/model/workload.dart';
import 'package:work_in_time/screens/home/components/employer.dart';
import 'package:work_in_time/shared/cust_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    var workl = Workload(
     entryTime: '08:00', 
     exitTime: '18:00',
     endInterval: '14:00',
     starInterval: '12:00'
    );
    var company = CompanyInf(
      nameOfCompany: 'Jerson e pães', 
      image: 'selct',
      totalWorkload: 'total_workload');  
    var profille = EmployeeInf(
      name: 'Pedro P. Pedra', 
      office:  'Padeiro', 
      gender: Gender.male, 
      wage: 1640, 
      dayOff: DayOff.sunday,
      workload: workl,
    ) ;    
    return Scaffold(
      appBar: custAppbar(company.nameOfCompany),
        floatingActionButton: 
        FloatingActionButton(
          backgroundColor: const Color(0xFF272330),
          onPressed: (){
            Navigator.pushNamed(context, 'new_employer');
          },
          child: const Icon(
            Icons.person_add_alt_1,
            color:Color(0xFFD0BCFF),
            ),
        ), 
      backgroundColor: const Color(0x010F0D13),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => Employer(employeeInf: profille,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
