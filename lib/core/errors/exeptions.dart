class CustomExceptions implements Exception {
  final String errorMessgae;

  CustomExceptions({required this.errorMessgae});

  @override
  String toString() {
    return errorMessgae;
  }
}
