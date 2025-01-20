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

  debugPrint('Starting newCustomActio...');
  debugPrint('Initial Promo: $currentPromo');
  debugPrint('Initial Price: $price');

  if (cartitems != null) {
    debugPrint('Cart items found. Processing...');
    for (var cartitem in cartitems) {
      var itemref = cartitem.menuitemref;
      debugPrint('Processing cart item: $cartitem');

      if (itemref != null) {
        debugPrint('Fetching item reference...');
        try {
          var item = await itemref.get();
          debugPrint('Item fetched: ${item.exists}');

          if (item.exists) {
            var data = item.data() as Map<String, dynamic>?;
            debugPrint('Item data: $data');

            if (data != null) {
              var brandref = data['brandref'];
              debugPrint('Brand reference: $brandref');

              if (brandref != null) {
                debugPrint('Fetching brand reference...');
                var brand = await brandref.get();
                debugPrint('Brand fetched: ${brand.exists}');

                if (brand.exists) {
                  var brandData = brand.data() as Map<String, dynamic>?;
                  debugPrint('Brand data: $brandData');

                  if (brandData != null) {
                    var promoref = brandData['promos'];
                    debugPrint('Promo reference: $promoref');

                    if (promoref != null) {
                      debugPrint('Fetching promo document...');
                      var promoDoc = await promoref.get();
                      debugPrint('Promo document fetched: ${promoDoc.exists}');
                      debugPrint('Promo document data: ${promoDoc.data()}');

                      if (promoDoc.exists) {
                        var promoData =
                        promoDoc.data() as Map<String, dynamic>?;
                        debugPrint('Promo data: $promoData');

                        if (promoData != null) {
                          var disc = promoData['discount'] as double? ?? 0;
                          var offer = promoData['offername'] as String? ?? '';
                          var max = promoData['maxdis'];

                          debugPrint('Discount: $disc');
                          debugPrint('Offer: $offer');
                          debugPrint('Max discount: $max');

                          currentOffer = offer;

                          String normalizedOffer = offer.trim().toLowerCase();
                          String normalizedPromo =
                          currentPromo.trim().toLowerCase();

                          if (normalizedPromo == normalizedOffer) {
                            debugPrint(
                                'Promo matches the offer. Calculating discount...');
                            var dis = (disc * price / 100);
                            debugPrint('Calculated discount: $dis');

                            if (dis >= max) {
                              debugPrint('Discount exceeds max. Applying max discount...');
                              price = price - max;
                            } else {
                              debugPrint('Applying calculated discount...');
                              price = price - dis;
                            }

                            debugPrint('Updated price: $price');
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
          debugPrint("Error fetching data: $e");
          return PromodiscStruct(
            discountedprice: 100000,
            promo: currentPromo,
            offer: currentOffer,
          );
        }
      } else {
        debugPrint('Item reference is null for cart item: $cartitem');
      }
    }
  } else {
    debugPrint('Cart items are null.');
  }

  debugPrint('Returning final result...');
  return PromodiscStruct(
    discountedprice: price,
    promo: currentPromo,
    offer: currentOffer,
  );
}

