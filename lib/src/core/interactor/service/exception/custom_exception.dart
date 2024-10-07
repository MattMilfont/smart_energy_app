// ignore_for_file: prefer_typing_uninitialized_variables

class CustomException implements Exception {
  final _message;
  final _prefix;

  CustomException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix: $_message';
  }
}

class FetchDataException extends CustomException {
  FetchDataException([String? message])
      : super(message, 'Erro durante comunicação: ');
}

class BadRequestException extends CustomException {
  BadRequestException([String? message]) : super(message, '');
}

class UnauthorisedException extends CustomException {
  UnauthorisedException([String? message])
      : super(message, 'Login ou senha inválidas.');
}

class InvalidInputException extends CustomException {
  InvalidInputException([String? message]) : super(message, '');
}

class NotFoundException extends CustomException {
  NotFoundException([String? message])
      : super(message, 'Nenhum resultado encontrado: ');
}

class AlredyExistsException extends CustomException {
  AlredyExistsException([String? message])
      : super(message, 'Não foi possível realizar essa operação: ');
}

class IncompletFormException extends CustomException {
  IncompletFormException([String? message])
      : super(message, 'Formulário incompleto: ');
}
