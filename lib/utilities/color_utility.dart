import 'package:flutter/material.dart';

// darken & lighten color taken from:
// https://stackoverflow.com/a/60191441/22962007

/// Darken a color by [percent] amount (100 = black)
Color darken(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100, 'value percent must be 1 to 100');
  final f = 1 - percent / 100;
  return Color.fromARGB(
    (c.a * 255.0).round() & 0xff,
    (c.r * 255.0 * f).round() & 0xff,
    (c.g * 255.0 * f).round() & 0xff,
    (c.b * 255.0 * f).round() & 0xff,
  );
}

/// Lighten a color by [percent] amount (100 = white)
Color lighten(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100, 'value percent must be 1 to 100');
  final p = percent / 100;
  return Color.fromARGB(
    (c.a * 255.0).round() & 0xff,
    ((c.r * 255.0) + ((255 - (c.r * 255.0)) * p)).round() & 0xff,
    ((c.g * 255.0) + ((255 - (c.g * 255.0)) * p)).round() & 0xff,
    ((c.b * 255.0) + ((255 - (c.b * 255.0)) * p)).round() & 0xff,
  );
}
