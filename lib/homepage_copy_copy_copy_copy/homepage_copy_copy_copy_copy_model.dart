import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'homepage_copy_copy_copy_copy_widget.dart'
    show HomepageCopyCopyCopyCopyWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomepageCopyCopyCopyCopyModel
    extends FlutterFlowModel<HomepageCopyCopyCopyCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 2;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
