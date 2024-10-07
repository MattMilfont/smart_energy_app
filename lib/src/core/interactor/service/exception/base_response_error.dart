


import 'package:smart_energy_app/src/core/interactor/service/exception/custom_exception.dart';

mixin BaseResponseError {
  dynamic baseResponseError(int? statusCode, String? errorMsg) {
    return switch (statusCode) {
      400 => BadRequestException(
          'Um dos campos precisa ser preenchido corretamente',
        ),
      401 => UnauthorisedException('Usuario não possui acesso'),
      403 =>
        UnauthorisedException('Sem autorização para realizar essa solicitação'),
      444 => Exception('Sem resultado para essa consulta'),
      404 => NotFoundException('Sem resultado para essa consulta'),
      500 => Exception('Erro interno no servidor'),
      _ => FetchDataException('Sem conexão com o servidor'),
    };
  }
}
