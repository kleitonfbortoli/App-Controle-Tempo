class InternalErrorException implements Exception {
  String cause;
  InternalErrorException(this.cause);
}