import 'package:flutter/material.dart';
import 'package:mys/utils/constans/text_strings.dart';
import 'package:mys/utils/logging/logger.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewPage extends StatefulWidget {
  static const routeName = '/pdfView';
  const PdfViewPage({super.key});

  @override
  State<PdfViewPage> createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  PdfViewerController _pdfViewerController = PdfViewerController();

  @override
  void initState() {
    super.initState();
    _pdfViewerController = PdfViewerController();
  }

  void goToPage(int page) {
    int maxPage = _pdfViewerController.pageCount;
    if (page >= 1 && page <= maxPage) {
      _pdfViewerController.jumpToPage(page);
    } else {
      TLogger.log.e("Halaman tidak valid!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("CV Muhammad Sadri"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SfPdfViewer.asset(
        TTexts.cvPDF,
        controller: _pdfViewerController,
        onDocumentLoaded: (PdfDocumentLoadedDetails details) {
          TLogger.log.i("Total halaman: ${details.document.pages.count}");
        },
        onPageChanged: (PdfPageChangedDetails details) {
          TLogger.log.i("Halaman saat ini: ${details.newPageNumber}");
        },
      ),
    );
  }
}
