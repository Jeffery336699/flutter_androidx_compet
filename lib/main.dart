import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScanDemo(),
    );
  }
}

class ScanDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("androidx适配"),
      ),
      body: Center(
        child: InkWell(
          child: Text("扫一扫",style: TextStyle(fontSize: 32.0,color: Theme.of(context).primaryColor),),
          onTap: scan,
        ),
      ),
    );
  }

  scan() async {
    String barcode = await BarcodeScanner.scan();
    print('barcode: $barcode');
  }
}
