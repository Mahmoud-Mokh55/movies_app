import 'package:movies_app/core/network/error_messege_model.dart';

class ServerException implements Exception{
  final ErroMessegeModel erroMessegeModel;

  const ServerException({required this.erroMessegeModel});
}
