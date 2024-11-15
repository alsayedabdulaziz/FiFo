import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetBobbinDataCall {
  static Future<ApiCallResponse> call({
    String? barcode = '\"\"',
  }) async {
    final ffApiRequestBody = '''
{
  "Barcode": "$barcode"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetBobbinData',
      apiUrl: 'http://172.22.105.125:8002/FIFO/GetBarcodeData',
      callType: ApiCallType.POST,
      headers: {},
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

  static String? itemname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Information''',
      ));
  static String? description(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.Description''',
      ));
  static List<String>? storageAreas(dynamic response) => (getJsonField(
        response,
        r'''$.Areas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LoginRequestCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginRequest',
      apiUrl: 'http://172.22.105.125:8002/FIFO/LogInRequest',
      callType: ApiCallType.POST,
      headers: {},
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

  static bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class AddItemCall {
  static Future<ApiCallResponse> call({
    String? barcode = '',
    String? storageArea = '',
    String? itemName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Barcode": "$barcode",
  "Storage Area": "$storageArea",
  "Item Name": "$itemName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddItem',
      apiUrl: 'http://172.22.105.125:8002/FIFO/AddItem',
      callType: ApiCallType.POST,
      headers: {},
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

class ConsumeMaterialCall {
  static Future<ApiCallResponse> call({
    String? shortCode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "ShortCode": "$shortCode"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ConsumeMaterial',
      apiUrl: 'http://172.22.105.125:8002/FIFO/ConsumeMaterial',
      callType: ApiCallType.POST,
      headers: {},
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

  static String? barcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Barcode''',
      ));
  static String? matName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Mat_Name''',
      ));
  static String? storageArea(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.Storage_Location''',
      ));
  static String? ecpireDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.Expire_Date''',
      ));
  static String? insertionDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.Insertion_Date''',
      ));
  static String? productionDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.Production_Date''',
      ));
  static String? itemBarcode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.Item_Barcode''',
      ));
}

class GetStorageAreasCall {
  static Future<ApiCallResponse> call({
    String? barcode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Barcode": "$barcode"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetStorageAreas',
      apiUrl: 'http://172.22.105.125:8002/FIFO/GetStorageAreas',
      callType: ApiCallType.POST,
      headers: {},
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

  static List<String>? storageAreas(dynamic response) => (getJsonField(
        response,
        r'''$.Areas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ConfirmConsumptionCall {
  static Future<ApiCallResponse> call({
    String? shortCode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Short_Code": "$shortCode"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ConfirmConsumption',
      apiUrl: 'http://172.22.105.125:8002/FIFO/ConfirmConsumption',
      callType: ApiCallType.POST,
      headers: {},
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
