import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start YouTube Group Code

class YouTubeGroup {
  static String baseUrl = 'https://www.googleapis.com/youtube/v3/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static YouTubeSearchCall youTubeSearchCall = YouTubeSearchCall();
  static YouTubeVideoCall youTubeVideoCall = YouTubeVideoCall();
}

class YouTubeSearchCall {
  Future<ApiCallResponse> call({
    String? part = '',
    String? q = '',
    String? key = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'YouTubeSearch',
      apiUrl: '${YouTubeGroup.baseUrl}/search',
      callType: ApiCallType.GET,
      headers: {
        ...YouTubeGroup.headers,
      },
      params: {
        'part': part,
        'q': q,
        'key': key,
      },
      returnBody: true,
    );
  }
}

class YouTubeVideoCall {
  Future<ApiCallResponse> call({
    String? part = '',
    String? id = '',
    String? key = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'YouTubeVideo',
      apiUrl: '${YouTubeGroup.baseUrl}/videos',
      callType: ApiCallType.GET,
      headers: {
        ...YouTubeGroup.headers,
      },
      params: {
        'part': part,
        'id': id,
        'key': key,
      },
      returnBody: true,
    );
  }
}

/// End YouTube Group Code

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
