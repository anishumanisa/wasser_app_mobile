abstract class Failure {
  final String message;

  const Failure(this.message);
}

class ServerFailure {
  const ServerFailure(String message);
}

class ConnectionFailure {
  const ConnectionFailure(String message);
}

class DatabaseFailure {
  const DatabaseFailure(String message);
}
