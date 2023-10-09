import 'package:equatable/equatable.dart';

class ErroMessegeModel extends Equatable {
  final int statusCode;
  final String statusMessege;
  final bool success;

  const ErroMessegeModel({
    required this.statusCode,
    required this.statusMessege,
    required this.success
  });

  factory ErroMessegeModel.fromjson(Map<String, dynamic> json){
    return ErroMessegeModel(
        statusCode: json['status_code'],
        statusMessege: json['status_message'],
        success: json['success']
    );
  }

  @override
  List<Object?> get props => [statusCode, statusMessege,success];
}


