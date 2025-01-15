import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String> newCategoryList(List<String> categories) {
  return categories.toSet().toList();
}

List<String> newBrand(List<String> brands) {
  return brands.toSet().toList();
}

double discount() {
  // calculate discount amount by multiplying cartsum from promocode percentage
  double cartSum = 100.0;
  double percentage = 0.2; // 20%
  double discountAmount = cartSum * percentage;
  return discountAmount;
}

bool? ratin(
  List<Orders2Record>? orders,
  DocumentReference? itemref,
) {
  if (orders != null && itemref != null) {
    // Check if any order in the list matches the itemref
    for (var order in orders) {
      var items = order.ordereditems;
      for (var item in items) {
        if (item.menuitemref == itemref) {
          return true;
        }
      }
    }
    return false;
  }
  return null;
}

double? newCustomFunction() {
  // if (code == promo) return cartsum - item.discount;
}

List<String>? newCustomFunction2(
  double sizexs,
  double sizes,
  double sizem,
  double sizel,
  double sizexl,
  double sizexxl,
) {
  List<String> sizeList = [];
  if (sizexs > 0) sizeList.add("XS");
  if (sizes > 0) sizeList.add("S");
  if (sizem > 0) sizeList.add("M");
  if (sizel > 0) sizeList.add("L");
  if (sizexl > 0) sizeList.add("XL");
  if (sizexxl > 0) sizeList.add("XXL");
  return sizeList;
}

List<String> newStyles(List<String> styles) {
  return styles.toSet().toList();
}
