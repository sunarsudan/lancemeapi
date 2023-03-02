class AppException implements Exception {
  // ignore: prefer_typing_uninitialized_variables
  final _prefix;
  // ignore: prefer_typing_uninitialized_variables
  final _message;
  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix,$_message';
  }
}

class InternetException extends AppException {
  InternetException([String? message])
      : super(message, "no internet connection");
}

class RequestTimeOut extends AppException {
  RequestTimeOut([String? message])
      : super(message, "Requested Time has Been Out");
}

class InteralServerException extends AppException {
  InteralServerException([String? message])
      : super(message, "internal server error");
}

class InvalidUrl extends AppException {
  InvalidUrl([String? message]) : super(message, "internal server error");
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message, '');
}
