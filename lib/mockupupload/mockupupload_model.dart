import '/flutter_flow/flutter_flow_util.dart';
import 'mockupupload_widget.dart' show MockupuploadWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MockupuploadModel extends FlutterFlowModel<MockupuploadWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
