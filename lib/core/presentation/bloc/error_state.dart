abstract class ErrorState {
  const ErrorState({
    required this.message,
    this.cause,
  });
  final String message;
  final Exception? cause;
}
