import 'dart:ui' show lerpDouble;

import 'package:meta/meta.dart';

/// A range from a low value to a high value.
@immutable
class Range {
  const Range(this.min, this.max)
      : assert(min != null),
        assert(max != null),
        assert(min <= max);

  /// The low/min value.
  final double min;

  /// The high/max value.
  final double max;

  /// the distance between min and max
  double get span => (max - min).abs();

  /// Linearly interpolate between two range values and a given time.
  static Range lerp(Range begin, Range end, double t) {
    return new Range(lerpDouble(begin.min, end.min, t), lerpDouble(begin.max, end.max, t));
  }
}
