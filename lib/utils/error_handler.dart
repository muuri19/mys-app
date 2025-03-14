import '../core/error/exceptions.dart';
import '../core/error/failure.dart';

Failure handleError(dynamic error) {
  if (error is ServerException) {
    return ServerFailure(error.message);
  } else if (error is CacheException) {
    return CacheFailure(error.message);
  } else {
    return Failure("Unexpected error: $error");
  }
}
