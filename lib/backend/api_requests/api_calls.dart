import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start reccApi Group Code

class ReccApiGroup {
  static String baseUrl = 'http://95.164.44.248:9000';
  static Map<String, String> headers = {};
  static ExtractMentionedDataCall extractMentionedDataCall =
      ExtractMentionedDataCall();
  static RootCall rootCall = RootCall();
}

class ExtractMentionedDataCall {
  Future<ApiCallResponse> call({
    String? url = 'https://youtu.be/2ekdc6jCu2E?si=HFY1m8JQmRP5Ln1x',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'extractMentionedData',
      apiUrl: '${ReccApiGroup.baseUrl}/extract_mentioned_data',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'url': url,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RootCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'root',
      apiUrl: '${ReccApiGroup.baseUrl}//',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End reccApi Group Code

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
