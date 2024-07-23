import 'package:flutter/material.dart';
import 'package:work_in_time/model/coins.dart';
import 'package:work_in_time/model/day_off.dart';
import 'package:work_in_time/screens/new_employer/components/card_prefix.dart';
import 'package:work_in_time/screens/new_employer/components/cust_text_place_one.dart';
import 'package:work_in_time/screens/new_employer/components/cust_text_place_whit_left_text.dart';
import 'package:work_in_time/shared/cust_appbar.dart';
import 'package:work_in_time/shared/cust_dropdown_menu.dart';

class NewEmployer extends StatefulWidget {
  const NewEmployer({super.key});

  @override
  State<NewEmployer> createState() => _NewEmployerState();
  }
  
  class _NewEmployerState extends State<NewEmployer>{
    final moeda = Coins.real;
    final _dayOff = DayOff.values.map((item) => item.dOff).toList();



  @override
  Widget build(BuildContext context) {

    
    
    return Scaffold(
      backgroundColor: const Color(0x010F0D13),
      appBar: custAppbar("New Employer"),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color(0xFF272330),
        child: const Icon(Icons.save, 
          color: Color(0xFFD0BCFF)
        ), 
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CardPrefix(column: Column(
                  children:[
                    Image.asset('assets/employee_null.png', width: 128),
                  const TextField(
                    style: TextStyle(color: Colors.white70),
                    textAlignVertical: TextAlignVertical.bottom,
                    textAlign: TextAlign.center,
                    textCapitalization: TextCapitalization.words,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'set employee name',
                      hintStyle: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                        )
                      ),
                  ),
                ]
              ),
            ),
            const SizedBox(height: 8,),
               CardPrefix(
              column: Column(
                children: [
                   const CustTextPlaceOne(
                    title: 'Email', 
                    hintText: "exemple@exemple.com", 
                    textTipe: TextInputType.emailAddress
                  ),
                  CustTextPlaceWhitLeftText(
                    title: 'wage', 
                    hintText: '0000', 
                    leftText: moeda.coin,
                    textTipe: TextInputType.number
                    ),
                    
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Entry/Exit Time'
                              ),
                              TextSpan(
                                text: ':'
                              ),
                            ]
                          )
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 60,
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                textCapitalization: TextCapitalization.characters,
                                textAlignVertical: TextAlignVertical.bottom,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal
                                ),
                                decoration: InputDecoration(
                                  hintText: '00:00',
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal
                                  )
                                )
                              ),
                            ),
                            Text('/',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 22,
                              fontWeight: FontWeight.normal
                            ),
                            ),
                            SizedBox(
                              width: 60,
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                textCapitalization: TextCapitalization.characters,
                                textAlignVertical: TextAlignVertical.bottom,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal
                                ),
                                decoration: InputDecoration(
                                  hintText: '00:00',
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal
                                  )
                                )
                              ),
                            ),
                        
                          ],
                        ),
                        const SizedBox(height: 8,),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Start/end Interval'
                              ),
                              TextSpan(
                                text: ':'
                              ),
                            ]
                          )
                        ),
                         const Row(
                          children: [
                            SizedBox(
                              width: 60,
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                textCapitalization: TextCapitalization.characters,
                                textAlignVertical: TextAlignVertical.bottom,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal
                                ),
                                decoration: InputDecoration(
                                  hintText: '00:00',
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal
                                  )
                                )
                              ),
                            ),
                            Text('/',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 22,
                              fontWeight: FontWeight.normal
                            ),
                            ),
                            SizedBox(
                              width: 60,
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                textCapitalization: TextCapitalization.characters,
                                textAlignVertical: TextAlignVertical.bottom,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal
                                ),
                                decoration: InputDecoration(
                                  hintText: '00:00',
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal
                                  )
                                )
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        CustomDropdownMenu(list: _dayOff, label: 'label'),

                      ],
                    )
                    /*falta:
        
                    */
                ],
              )
            )
          ],
        )
      ),
    );
  }
}

