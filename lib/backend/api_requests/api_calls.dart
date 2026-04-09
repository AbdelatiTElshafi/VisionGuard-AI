import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start SupabaseReports Group Code

class SupabaseReportsGroup {
  static String getBaseUrl() =>
      'https://sicwrmdxqrzopjpprgmo.supabase.co/rest/v1/rpc';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
    'Content-Type': 'application/json',
  };
  static GetsyStemSummaryCall getsyStemSummaryCall = GetsyStemSummaryCall();
  static GetSystemAnalyticsCall getSystemAnalyticsCall =
      GetSystemAnalyticsCall();
}

class GetsyStemSummaryCall {
  Future<ApiCallResponse> call({
    String? startDate = '2026-04-01 16:46:00.000',
    String? endDate = '2026-04-07 16:46:02.542',
  }) async {
    final baseUrl = SupabaseReportsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_from": "${escapeStringForJson(startDate)}",
  "p_to": "${escapeStringForJson(endDate)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetsyStemSummary',
      apiUrl: '${baseUrl}/get_system_summary',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
        'Content-Type': 'application/json',
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

  int? totalviolations(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_violations''',
      ));
  List<String>? violationtype(dynamic response) => (getJsonField(
        response,
        r'''$.violation_type_totals[:].violation_type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? totalviolationType(dynamic response) => (getJsonField(
        response,
        r'''$.violation_type_totals[:].total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetSystemAnalyticsCall {
  Future<ApiCallResponse> call({
    String? startDate = '',
    String? endData = '',
  }) async {
    final baseUrl = SupabaseReportsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_from": "${escapeStringForJson(startDate)}",
  "p_to": "${escapeStringForJson(endData)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetSystemAnalytics',
      apiUrl: '${baseUrl}/get_system_analytics',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
        'Content-Type': 'application/json',
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

  List<String>? intervals(dynamic response) => (getJsonField(
        response,
        r'''$[:].bucket''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? violations(dynamic response) => (getJsonField(
        response,
        r'''$[:].total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? interverIndex(dynamic response) => (getJsonField(
        response,
        r'''$[:].index''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

/// End SupabaseReports Group Code

/// Start EdgeFunctions Group Code

class EdgeFunctionsGroup {
  static String getBaseUrl() =>
      'https://sicwrmdxqrzopjpprgmo.supabase.co/functions/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
    'Content-Type': 'application/json',
  };
  static SenddailyreportCall senddailyreportCall = SenddailyreportCall();
  static SMTPMailCall sMTPMailCall = SMTPMailCall();
}

class SenddailyreportCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'senddailyreport',
      apiUrl: '${baseUrl}/send-daily-report',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
        'Content-Type': 'application/json',
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

class SMTPMailCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "to": "abdelatielshafi@gmail.com",
  "subject": "SMTP test",
  "html": "<h1>Mail sent</h1><p>Supabase SMTP is working.</p>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SMTPMail',
      apiUrl: '${baseUrl}/SMTP_Mail',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpY3dybWR4cXJ6b3BqcHByZ21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzI3NTEsImV4cCI6MjA5MTA0ODc1MX0.E0A-D-r91IYss3G0iFbPSmpO8VJkcjWoMSe4Vm2vAHM',
        'Content-Type': 'application/json',
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

/// End EdgeFunctions Group Code

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
