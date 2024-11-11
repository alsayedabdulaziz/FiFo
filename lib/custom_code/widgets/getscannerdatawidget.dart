// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:honeywell_scanner/honeywell_scanner.dart';

class Getscannerdatawidget extends StatefulWidget {
  const Getscannerdatawidget({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Getscannerdatawidget> createState() => _GetscannerdatawidgetState();
}

class _GetscannerdatawidgetState extends State<Getscannerdatawidget>
    implements ScannerCallback {
  HoneywellScanner honeywellScanner = HoneywellScanner();
  ScannedData? scannedData;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    honeywellScanner.startScanner();
    honeywellScanner.scannerCallback = this;
  }

  @override
  void onDecoded(ScannedData? scannedData) {
    setState(() {
      this.scannedData = scannedData;
      FFAppState().scannerdata = scannedData?.code ?? '';
    });
  }

  @override
  void onError(Exception error) {
    setState(() {
      errorMessage = error.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'code:${scannedData?.code}',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    honeywellScanner.stopScanner();
    super.dispose();
  }
}
