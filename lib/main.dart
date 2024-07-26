import 'package:flutter/material.dart';
import 'package:tugasakhir_tes1/question1.dart';
import 'package:tugasakhir_tes1/wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  // static const primaryColor = Color(0xFF45625D);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Warna Primary pada Question
        // primaryColor : primaryColor,

        // Font Default untuk Seluruh teks
        fontFamily: 'Share',
        
        // textTheme: const TextTheme(
        //   headline1: TextStyle(fontSize: 96.0, fontFamily: 'Outfit', color: Colors.white),
        //   headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        //   bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        // )
        ),

        // Membuat TextTheme
        
      home: const QuestionOne(),
      // home: Wrapper(),
    );
  }
}