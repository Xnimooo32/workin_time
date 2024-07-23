  import 'package:flutter/material.dart';

  class CustTextPlaceOne extends StatelessWidget{
    final String title;
    final String hintText;
    final TextInputType textTipe;
    const CustTextPlaceOne({
      super.key,
      required this.title,
      required this.hintText,
      required this.textTipe
    });
    @override
    Widget build(BuildContext context) {
      return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: title
            )
          ),
          TextField(
            keyboardType: textTipe,
            textCapitalization: TextCapitalization.characters,
            textAlignVertical: TextAlignVertical.bottom,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 22,
              fontWeight: FontWeight.normal
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.white70,
                fontSize: 22,
                fontWeight: FontWeight.normal
              )
            ),
          )
        ],
      );
    }
  }
