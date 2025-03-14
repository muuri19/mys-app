class Failure {
  final String message;
  Failure(this.message);

  @override
  String toString() => "Failure: $message";
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}

class CacheFailure extends Failure {
  CacheFailure(super.message);
}
