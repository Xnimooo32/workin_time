import 'package:flutter/material.dart';

AppBar custAppbar(String title){
  return AppBar(   
    backgroundColor:  const Color(0xFF141218),
    leading: 
      IconButton(
        onPressed: () {}, 
        icon: const Icon(Icons.menu), 
        color: const Color(0xFFD0BCFF)
      ),
    title: 
      Text(
        title, 
        style: const TextStyle(   
          fontSize: 24,
          color: Colors.white70
        ),
      ),
      centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {}, 
        icon: const Icon(
          Icons.settings,
          color: Color(0xFFD0BCFF)
        )
      ),
    ],
  );
}