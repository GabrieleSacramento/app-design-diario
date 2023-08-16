import 'package:flutter/material.dart';

const myprymarycolor = Color(0xFF005268);
const mysecondarycolor = Color(0xFF667F93);

CustomColors lightCustomColors = const CustomColors(
  sourceMyprymarycolor: Color(0xFF005268),
  myprymarycolor: Color(0xFF006782),
  onMyprymarycolor: Color(0xFFFFFFFF),
  myprymarycolorContainer: Color(0xFFBAEAFF),
  onMyprymarycolorContainer: Color(0xFF001F29),
  sourceMysecondarycolor: Color(0xFF667F93),
  mysecondarycolor: Color(0xFF006491),
  onMysecondarycolor: Color(0xFFFFFFFF),
  mysecondarycolorContainer: Color(0xFFC9E6FF),
  onMysecondarycolorContainer: Color(0xFF001E2F),
);

CustomColors darkCustomColors = const CustomColors(
  sourceMyprymarycolor: Color(0xFF005268),
  myprymarycolor: Color(0xFF60D4FE),
  onMyprymarycolor: Color(0xFF003545),
  myprymarycolorContainer: Color(0xFF004D62),
  onMyprymarycolorContainer: Color(0xFFBAEAFF),
  sourceMysecondarycolor: Color(0xFF667F93),
  mysecondarycolor: Color(0xFF8ACEFF),
  onMysecondarycolor: Color(0xFF00344E),
  mysecondarycolorContainer: Color(0xFF004C6E),
  onMysecondarycolorContainer: Color(0xFFC9E6FF),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceMyprymarycolor,
    required this.myprymarycolor,
    required this.onMyprymarycolor,
    required this.myprymarycolorContainer,
    required this.onMyprymarycolorContainer,
    required this.sourceMysecondarycolor,
    required this.mysecondarycolor,
    required this.onMysecondarycolor,
    required this.mysecondarycolorContainer,
    required this.onMysecondarycolorContainer,
  });

  final Color? sourceMyprymarycolor;
  final Color? myprymarycolor;
  final Color? onMyprymarycolor;
  final Color? myprymarycolorContainer;
  final Color? onMyprymarycolorContainer;
  final Color? sourceMysecondarycolor;
  final Color? mysecondarycolor;
  final Color? onMysecondarycolor;
  final Color? mysecondarycolorContainer;
  final Color? onMysecondarycolorContainer;

  @override
  CustomColors copyWith({
    Color? sourceMyprymarycolor,
    Color? myprymarycolor,
    Color? onMyprymarycolor,
    Color? myprymarycolorContainer,
    Color? onMyprymarycolorContainer,
    Color? sourceMysecondarycolor,
    Color? mysecondarycolor,
    Color? onMysecondarycolor,
    Color? mysecondarycolorContainer,
    Color? onMysecondarycolorContainer,
  }) {
    return CustomColors(
      sourceMyprymarycolor: sourceMyprymarycolor ?? this.sourceMyprymarycolor,
      myprymarycolor: myprymarycolor ?? this.myprymarycolor,
      onMyprymarycolor: onMyprymarycolor ?? this.onMyprymarycolor,
      myprymarycolorContainer:
          myprymarycolorContainer ?? this.myprymarycolorContainer,
      onMyprymarycolorContainer:
          onMyprymarycolorContainer ?? this.onMyprymarycolorContainer,
      sourceMysecondarycolor:
          sourceMysecondarycolor ?? this.sourceMysecondarycolor,
      mysecondarycolor: mysecondarycolor ?? this.mysecondarycolor,
      onMysecondarycolor: onMysecondarycolor ?? this.onMysecondarycolor,
      mysecondarycolorContainer:
          mysecondarycolorContainer ?? this.mysecondarycolorContainer,
      onMysecondarycolorContainer:
          onMysecondarycolorContainer ?? this.onMysecondarycolorContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceMyprymarycolor:
          Color.lerp(sourceMyprymarycolor, other.sourceMyprymarycolor, t),
      myprymarycolor: Color.lerp(myprymarycolor, other.myprymarycolor, t),
      onMyprymarycolor: Color.lerp(onMyprymarycolor, other.onMyprymarycolor, t),
      myprymarycolorContainer:
          Color.lerp(myprymarycolorContainer, other.myprymarycolorContainer, t),
      onMyprymarycolorContainer: Color.lerp(
          onMyprymarycolorContainer, other.onMyprymarycolorContainer, t),
      sourceMysecondarycolor:
          Color.lerp(sourceMysecondarycolor, other.sourceMysecondarycolor, t),
      mysecondarycolor: Color.lerp(mysecondarycolor, other.mysecondarycolor, t),
      onMysecondarycolor:
          Color.lerp(onMysecondarycolor, other.onMysecondarycolor, t),
      mysecondarycolorContainer: Color.lerp(
          mysecondarycolorContainer, other.mysecondarycolorContainer, t),
      onMysecondarycolorContainer: Color.lerp(
          onMysecondarycolorContainer, other.onMysecondarycolorContainer, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourceMyprymarycolor]
  ///   * [CustomColors.myprymarycolor]
  ///   * [CustomColors.onMyprymarycolor]
  ///   * [CustomColors.myprymarycolorContainer]
  ///   * [CustomColors.onMyprymarycolorContainer]
  ///   * [CustomColors.sourceMysecondarycolor]
  ///   * [CustomColors.mysecondarycolor]
  ///   * [CustomColors.onMysecondarycolor]
  ///   * [CustomColors.mysecondarycolorContainer]
  ///   * [CustomColors.onMysecondarycolorContainer]
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
}
