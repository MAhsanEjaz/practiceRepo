import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class SignaturePractice extends StatefulWidget {
  const SignaturePractice({Key? key}) : super(key: key);

  @override
  _SignaturePracticeState createState() => _SignaturePracticeState();
}

class _SignaturePracticeState extends State<SignaturePractice> {
  SignatureController signatureController = SignatureController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signature'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Signature(
              controller: signatureController,
              height: 200,
              backgroundColor: Colors.red,
              width: double.infinity,
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      signatureController.clear();
                    },
                    child: Text('Clear')),
                TextButton(
                    onPressed: () {
                      viewSigneture();
                    },
                    child: Text('View'))
              ],
            )
          ],
        ),
      ),
    );
  }

  void viewSigneture() async {
    final data = await signatureController.toImage();
    final byte = await data!.toByteData(format: ui.ImageByteFormat.png);

    await Navigator.push(context,
        CupertinoPageRoute(builder: (BuildContext context) {
      return Scaffold(
        body: Center(
          child: Image.memory(byte!.buffer.asUint8List()),
        ),
      );
    }));
  }

// viewScreen() async {
//   final data = await signatureController.toImage();
//   final bytes = await data!.toByteData(format: ui.ImageByteFormat.png);
//   await Navigator.of(context)
//       .push(MaterialPageRoute(builder: (BuildContext context) {
//     return Scaffold(
//       body: Image.memory(bytes!.buffer.asUint8List()),
//     );
//   }));
// }
}
