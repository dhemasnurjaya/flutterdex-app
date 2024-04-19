import 'package:flutterdex/core/error/failure.dart';

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    super.cause,
  });
}
