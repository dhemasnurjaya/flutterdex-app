import 'package:flutter/material.dart';

/// Show error with retry button
class ErrorRetryWidget extends StatelessWidget {
  /// Default constructor
  const ErrorRetryWidget({required this.onTapRetry, super.key});

  /// Retry button on-tap callback
  final GestureTapCallback onTapRetry;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 48),
          const SizedBox(height: 16),
          const Text(
            'Something went wrong. Please try again.',
          ),
          TextButton(
            onPressed: onTapRetry,
            child: const Text(
              'Retry',
            ),
          ),
        ],
      ),
    );
  }
}
