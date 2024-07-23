import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  final List<String> list;
  final String label;
  const CustomDropdownMenu({
    super.key,
    required this.list,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: label
              ),
              const TextSpan(
                text: ':'
              ),
            ]
          )
        ),
        DropdownMenu(
          dropdownMenuEntries: list
              .map(
                (item) => DropdownMenuEntry(
                  value: item,
                  label: item,
                ),
              )
              .toList(),
          initialSelection: list.first,
          textStyle: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 16,
              fontWeight: FontWeight.normal),
          width: 140
        ),
      ],
    );
  }
}