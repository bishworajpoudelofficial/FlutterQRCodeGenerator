import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class FlutterHopeQRGenerator extends StatefulWidget {
  const FlutterHopeQRGenerator({Key? key}) : super(key: key);

  @override
  _FlutterHopeQRGeneratorState createState() => _FlutterHopeQRGeneratorState();
}

class _FlutterHopeQRGeneratorState extends State<FlutterHopeQRGenerator> {
  String text = "";

// This will set the text value
  void setTextValue(val) {
    setState(() {
      text = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Hope QR Generator'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter your text for QR code',
                ),
                onChanged: (val){
                  setTextValue(val);
                },
                maxLines: 1,
                keyboardType: TextInputType.text,
              ),
              QrImage(
                data: text,
                version: QrVersions.auto,
                size: 200.0,
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
