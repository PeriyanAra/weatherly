import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_result.freezed.dart';

@freezed
class FailureResult with _$FailureResult implements Exception {
  const factory FailureResult({
    required FailureReasons reason,
    required String debugMessage,
    required String statusCode,
    required String errorMessage,
  }) = _FailureResult;

  @override
  String toString() {
    return debugMessage;
  }
}

enum FailureReasons {
  noInternetConnection,
  timeout,
  tokenExpired,
  storageException,
  databaseException,
  unknown,
}
