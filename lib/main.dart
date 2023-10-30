import 'package:flutter/material.dart';
import 'package:whatsappclone/screen/whatsApp_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, 36, 120, 95))),
    home: WhatsAppScreen(),
  ));
}
