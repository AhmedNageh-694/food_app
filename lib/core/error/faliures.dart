class Faliure {
  final String errMessage;

  Faliure({
    required this.errMessage,
  });
}

class ServerFaliure extends Faliure {
  ServerFaliure({
    required super.errMessage,
  });
}
