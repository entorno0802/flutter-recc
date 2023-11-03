import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start reccApi Group Code

class ReccApiGroup {
  // static String baseUrl = 'http://95.164.44.248:9000';
  static String baseUrl = 'http://3.144.22.3';
  static Map<String, String> headers = {};
  static ExtractMentionedDataCall extractMentionedDataCall =
      ExtractMentionedDataCall();
}

class ExtractMentionedDataCall {
  Future<ApiCallResponse> call({
    required String thisUrl,
    String? url = 'https://youtu.be/bRWT7hVgwuM?si=0f7O3LFjMj7DfkqQ',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'extractMentionedData',
      apiUrl: '${ReccApiGroup.baseUrl}/extract_mentioned_data',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'url': thisUrl,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic transcript(dynamic response) => getJsonField(
        response,
        r'''$.transcript''',
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.title''',
      );
  dynamic media(dynamic response) => getJsonField(
        response,
        r'''$.media''',
        true,
      );
  dynamic mediaCategory(dynamic response) => getJsonField(
        response,
        r'''$.media[:].Category''',
        true,
      );
  dynamic mediaTitle(dynamic response) => getJsonField(
        response,
        r'''$.media[:].Title''',
        true,
      );
  dynamic mediaAuthor(dynamic response) => getJsonField(
        response,
        r'''$.media[:].Author''',
        true,
      );
  dynamic mediaDescription(dynamic response) => getJsonField(
        response,
        r'''$.media[:].Description''',
        true,
      );
  dynamic mediaImage(dynamic response) => getJsonField(
        response,
        r'''$.media[:].Image''',
        true,
      );
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
