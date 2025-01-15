// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<PromodiscStruct> newCustomActio(
  List<CartitemtypeStruct>? cartitems,
  String? promo,
  double price,
) async {
  String currentPromo = promo ?? '';
  String currentOffer = '';

  if (cartitems != null) {
    for (var cartitem in cartitems) {
      var itemref = cartitem.menuitemref;
      if (itemref != null) {
        try {
          var item = await itemref.get();
          if (item.exists) {
            var data = item.data() as Map<String, dynamic>?;
            if (data != null) {
              var brandref = data['brandref'];
              if (brandref != null) {
                var brand = await brandref.get();
                if (brand.exists) {
                  var brandData = brand.data() as Map<String, dynamic>?;
                  if (brandData != null) {
                    var promoref = brandData['promos'];
                    if (promoref != null) {
                      var promoDoc = await promoref.get();
                      if (promoDoc.exists) {
                        var promoData =
                            promoDoc.data() as Map<String, dynamic>?;
                        if (promoData != null) {
                          var disc = promoData['discount'] as double? ?? 0;
                          var offer = promoData['offername'] as String? ?? '';
                          var max = promoData['maxdis'];

                          currentOffer = offer;

                          String normalizedOffer = offer.trim().toLowerCase();
                          String normalizedPromo =
                              currentPromo.trim().toLowerCase();

                          if (normalizedPromo == normalizedOffer) {
                            var dis = (disc * price / 100);
                            if (dis >= max) {
                              price = price - max;
                            } else {
                              price = price - dis;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        } catch (e) {
          print("Error fetching data: $e");
          return PromodiscStruct(
            discountedprice: 100000,
            promo: currentPromo,
            offer: currentOffer,
          );
        }
      }
    }
  }

  return PromodiscStruct(
    discountedprice: price,
    promo: currentPromo,
    offer: currentOffer,
  );
}
