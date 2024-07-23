import 'package:flutter/material.dart';

class CustTextPlaceWhitLeftText extends StatelessWidget{
  final String title;
  final dynamic leftText;
  final dynamic hintText;
  final TextInputType textTipe;
  const CustTextPlaceWhitLeftText({
    super.key,
    required this.title,
    required this.leftText,
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
            children: [
              TextSpan(
                text: title
              ),
              const TextSpan(
                text: ':'
              ),
            ]
          )
        ),
        Row(
          children: [
            Text(leftText,
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 22
              
              ),
            ),
            SizedBox(
              width: 100,
              child: TextField(
                keyboardType: textTipe,
                textCapitalization: TextCapitalization.words,
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
              ),
            ),
          ],
        )
      ],
    );
  }
}
