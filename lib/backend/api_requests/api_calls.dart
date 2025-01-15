import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start RazorpayX Api Group Code

class RazorpayXApiGroup {
  static String getBaseUrl() => 'https://api.razorpay.com/v1';
  static Map<String, String> headers = {
    'Authorization':
        'Basic cnpwX3Rlc3RfUjN2VHdhN2x5cDh1TzE6YUVFVVdrWGQyYjh4czlUdmZXYlViS2xO',
  };
  static CreateContactCall createContactCall = CreateContactCall();
  static FundAccountBankAccountCall fundAccountBankAccountCall =
      FundAccountBankAccountCall();
  static PayoutsCall payoutsCall = PayoutsCall();
  static GetStatusCall getStatusCall = GetStatusCall();
}

class CreateContactCall {
  Future<ApiCallResponse> call({
    String? name = '',
  }) async {
    final baseUrl = RazorpayXApiGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "name": "name"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Contact',
      apiUrl: '$baseUrl/contacts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic cnpwX3Rlc3RfUjN2VHdhN2x5cDh1TzE6YUVFVVdrWGQyYjh4czlUdmZXYlViS2xO',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? contactID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? entity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
}

class FundAccountBankAccountCall {
  Future<ApiCallResponse> call({
    String? contactId = '',
    String? accountType = '',
    String? bankAccount = '',
    String? name = '',
    String? accountNumber = '',
    String? ifsc = '',
  }) async {
    final baseUrl = RazorpayXApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "contact_id": "${escapeStringForJson(contactId)}",
  "account_type": "${escapeStringForJson(accountType)}",
  "bank_account": {
    "name": "${escapeStringForJson(name)}",
    "ifsc": "${escapeStringForJson(ifsc)}",
    "account_number": "${escapeStringForJson(accountNumber)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Fund Account BankAccount',
      apiUrl: '$baseUrl/fund_accounts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic cnpwX3Rlc3RfUjN2VHdhN2x5cDh1TzE6YUVFVVdrWGQyYjh4czlUdmZXYlViS2xO',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? fundId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? contactid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity''',
      ));
  String? bankaccounttifsc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bank_account.ifsc''',
      ));
  String? bankaccountbankname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bank_account.bank_name''',
      ));
  String? bankaccountname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bank_account.name''',
      ));
  String? entity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity''',
      ));
  bool? active(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.active''',
      ));
  int? createdat(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  String? accounttype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account_type''',
      ));
}

class PayoutsCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? fundAccountId = '',
    double? amount,
    String? currency = '',
    String? mode = '',
    String? purpose = '',
    bool? queueIfLowBalance = true,
  }) async {
    final baseUrl = RazorpayXApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "account_number": "${escapeStringForJson(accountNumber)}",
  "fund_account_id": "${escapeStringForJson(fundAccountId)}",
  "amount": $amount,
  "currency": "${escapeStringForJson(currency)}",
  "mode": "${escapeStringForJson(mode)}",
  "purpose": "${escapeStringForJson(purpose)}",
  "queue_if_low_balance": $queueIfLowBalance
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'payouts',
      apiUrl: '$baseUrl/payouts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic cnpwX3Rlc3RfUjN2VHdhN2x5cDh1TzE6YUVFVVdrWGQyYjh4czlUdmZXYlViS2xO',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStatusCall {
  Future<ApiCallResponse> call({
    String? payoutId = '',
  }) async {
    final baseUrl = RazorpayXApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Status',
      apiUrl: '$baseUrl/payouts/$payoutId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic cnpwX3Rlc3RfUjN2VHdhN2x5cDh1TzE6YUVFVVdrWGQyYjh4czlUdmZXYlViS2xO',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End RazorpayX Api Group Code

class LoadingCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'loading',
      apiUrl:
          'https://lottie.host/7e906f0d-87c7-404b-a745-a2d4461d2a93/K9M2iUae5t.lottie',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AzorpayCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'azorpay',
      apiUrl: 'croscrow.com',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatePaymentOrderCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePaymentOrder',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders',
      callType: ApiCallType.POST,
      headers: {
        'x-cilent-id': 'rzp_test_R3vTwa7lyp8uO1',
        'x-cilent-secret': 'aEEUWkXd2b8xs9TvfWbUbKlN',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
