import 'package:flutter/material.dart';
import 'package:work_in_time/model/employee_inf.dart';
class Employer extends StatelessWidget {
  final EmployeeInf employeeInf;
  const Employer({
    super.key,
    required this.employeeInf,
    });

  @override
  Widget build(BuildContext context) {
    return  
       Card(
        shadowColor: const Color(0xFF141218),
        color: const Color(0xFF141218),
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(16)
          ),
        child:Container(
          decoration: BoxDecoration(
            color: const Color(0xFF141218),
            borderRadius: BorderRadius.circular(16),
            border: const Border(
              bottom: BorderSide(
                color: Color(0xFF413C50),  
              ),
              ),
          ),
          child:Card(
          color: const Color(0xFF141218),
          child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/employee_${employeeInf.gender.name}.png",
                      height: 80,
                    ),
                    const SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan( 
                            text: employeeInf.name,
                            style:  const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500
                              ),    
                            
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: '${employeeInf.workload.entryTime}/${employeeInf.workload.starInterval}', 
                            style: const TextStyle(
                              color: Colors.white54
                            )
                          ),
                        ),
                        RichText(
                          text:TextSpan(
                            text: '${employeeInf.workload.endInterval}/${employeeInf.workload.exitTime} ', 
                            style: const TextStyle(
                              color: Colors.white54
                            ),
                          ),
                        )
                      ],
                    ),
                  ]
                ),
                RichText(
                  text: TextSpan(
                    text: employeeInf.office, 
                    style: const TextStyle(
                      fontSize: 18
                    ),
                  )
                ),
                IconButton(
                  onPressed: () {}, 
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Color(0xFFD0BCFF),
                  ),    
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}