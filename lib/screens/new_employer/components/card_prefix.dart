import 'package:flutter/material.dart';

class CardPrefix extends StatelessWidget{
  final Column column;
  const CardPrefix ({
    super.key,
    required this.column
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: const Color(0xFF413C50),
      margin: const EdgeInsets.all(0),
      color: const Color(0xFF141218),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
        ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF141218),
          borderRadius: BorderRadius.circular(16),
          border: const Border(
            bottom: BorderSide(
            color: Color(0xFF413C50),  
            ),
            ),
        ),
        child: column
      )
    );
  }
}