abstract class ErrorState {
  final String message;
  final Exception? cause;

  const ErrorState({
    required this.message,
    this.cause,
  });
}
