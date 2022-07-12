import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class PdfServiceApi {
  static Future<File> generateTextPdfForm(
    String text,
  ) async {
    final pdf = Document();

    pdf.addPage(Page(
        build: (context) => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PdfLogo(),
                  Text('Company Name'),
                  Divider(),
                  Center(
                      child: Text(text,
                          style: const TextStyle(
                              fontSize: 40, color: PdfColors.amber)))
                ])));
    return saveDocument(name: 'myExamplePdf', pdf: pdf);
  }

  static Future<File> saveDocument(
      {required String name, required Document pdf}) async {
    final bytes = await pdf.save();
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;
    await OpenFile.open(url);
  }
}
