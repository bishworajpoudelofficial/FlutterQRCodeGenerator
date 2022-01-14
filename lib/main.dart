import 'package:flutter/material.dart';
import 'qr_generator.dart';
/*
This project is downloaded from flutterhope.com.
Visit flutterhope.com for more projects.
 */
void main()=> runApp(const FlutterHopeQR());


class FlutterHopeQR extends StatelessWidget {
  const FlutterHopeQR({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Hope QR",
      home: FlutterHopeQRGenerator()
    );
  }
}



