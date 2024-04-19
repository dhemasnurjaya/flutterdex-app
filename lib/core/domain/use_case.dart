import 'package:flutterdex/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

/// [Type] is the return type of a successful use case call.
/// [Params] are the parameters that are required to call the use case.
abstract class UseCase<Type, Params> {
  /// Execute the use case
  Future<Either<Failure, Type>> execute(Params params);
}
