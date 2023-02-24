import 'dart:typed_data';

/// extension  method added to List<int> to enable conversion to a [Uint8List].
/// Attempts to cast to a [Uint8List] first otherwise creates a [Uint8List]
/// copy.
extension AsUint8List on List<int> {
  Uint8List asUint8List() {
    final self = this; // Local variable to allow automatic type promotion.
    return (self is Uint8List) ? self : Uint8List.fromList(this);
  }
}
