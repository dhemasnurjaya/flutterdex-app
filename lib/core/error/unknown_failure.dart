import 'package:flutterdex/core/error/failure.dart';

class UnknownFailure extends Failure {
  const UnknownFailure({
    required super.message,
    super.cause,
  });
}
