/// Config base class
abstract class Config<T> {
  /// Get config value
  Future<T> get();

  /// Set config value
  Future<void> set(T value);
}
