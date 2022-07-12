import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled5/services/pdf_service.dart';

class PdfExampleScreen extends StatefulWidget {
  const PdfExampleScreen({Key? key}) : super(key: key);

  @override
  _PdfExampleScreenState createState() => _PdfExampleScreenState();
}

class _PdfExampleScreenState extends State<PdfExampleScreen> {
  TextEditingController controller = TextEditingController();

  String? imagePath;

  final imagePic = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
              onPressed: () async {
                final image =
                    await imagePic.pickImage(source: ImageSource.camera);
                if (image != null) {
                  imagePath = image.path;
                  setState(() {});
                }
              },
              child: Text('SlectImage')),
          ElevatedButton(
            onPressed: () async {
              final pdf = await PdfServiceApi.generateTextPdfForm(
                  controller.text, );
              PdfServiceApi.openFile(pdf);
            },
            child: Text('Pdf Example'),
          ),
        ],
      ),
    );
  }
}
