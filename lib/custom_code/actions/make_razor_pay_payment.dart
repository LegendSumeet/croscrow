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

import 'package:razorpay_flutter/razorpay_flutter.dart';

Future makeRazorPayPayment(String amount) async {
  // Add your function code here!

  try {
    Razorpay razorpay = Razorpay();

    String selectedPaymentMethod = '';

    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, (error) {
      // print('Payment Error: $error');
      razorpay.clear();
    });

    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, (wallet) {
      // print('External Wallet: $wallet');
      selectedPaymentMethod = wallet['name'];
      razorpay.clear();
    });

    var options = {
      'key': 'rzp_test_ikFnkigRDElUDw', // Your Razorpay key_id
      'amount': amount, // Amount in the smallest currency unit
      'name': 'NAME',
      'description': 'Payment Description',
      'prefill': {'contact': '8888888888', 'email': 'test@example.com'},
      'method': ['upi', 'netbanking', 'debit_card', 'credit_card']
    };

    razorpay.open(options);

    return 1;
  } catch (e) {
    // print('Payment Error: $e');
    return 0; // Payment initiation failed
  }
}
