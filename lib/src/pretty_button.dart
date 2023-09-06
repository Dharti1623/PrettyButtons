import 'package:flutter/material.dart';

/// A customizable pretty button widget with various styling options.
class PrettyButton extends StatelessWidget {
  /// If `true`, the button will be disabled.
  final bool isDisable;

  /// The height of the button.
  final double height;

  /// The width of the button.
  final double width;

  /// The blur radius of the button's shadow.
  final double blurRadius;

  /// The spread radius of the button's shadow.
  final double spreadRadius;

  /// The border radius of the button to give it a specific shape.
  final double? borderRadius;

  /// The background color of the button.
  final Color? backgroundColor;

  /// The shadow color on the top-center and top-left sides.
  final Color? topShadowColor;

  /// The shadow color on the bottom-center and bottom-right sides.
  final Color? bottomShadowColor;

  /// The padding for the child widget inside the button.
  final EdgeInsets innerPadding;

  /// The padding for the entire button.
  final EdgeInsets outerPadding;

  /// The child widget to be placed inside the button.
  final Widget child;

  /// A callback function that is called when the button is tapped.
  final VoidCallback? onTap;

  /// Creates a `PrettyButton` widget.
  ///
  /// [onTap] is called when the button is tapped.
  ///
  /// The [child] widget can be any type, such as text, icons, or images.
  ///
  /// Default values:
  /// - [height]: 50.0
  /// - [width]: 150.0
  /// - [blurRadius]: 5.0
  /// - [spreadRadius]: 1.0
  /// - [borderRadius]: 15.0
  /// - [innerPadding]: EdgeInsets.all(8.0)
  /// - [outerPadding]: EdgeInsets.all(8.0)
  /// - [isDisable]: false
  const PrettyButton({
    super.key,
    this.onTap,
    required this.child,
    this.height = 50.0,
    this.width = 150.0,
    this.blurRadius = 5.0,
    this.spreadRadius = 1.0,
    this.borderRadius = 15.0,
    this.backgroundColor,
    this.topShadowColor,
    this.bottomShadowColor,
    this.innerPadding = const EdgeInsets.all(8.0),
    this.outerPadding = const EdgeInsets.all(8.0),
    this.isDisable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Provides padding outside of the button so you don't need to give padding manually.
      padding: outerPadding,
      child: GestureDetector(
        onTap: isDisable ? null : onTap,
        child: Container(
          // Provides padding between the child widget and button.
          padding: innerPadding,
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(
              color: isDisable
                  ? Colors.grey.shade300
                  : backgroundColor ??
                      Theme.of(context).colorScheme.outlineVariant,
              width: 2,
            ),
            // Adds a border around the button.
            color: isDisable
                ? Colors.grey.shade300
                : backgroundColor ??
                    Theme.of(context).colorScheme.outlineVariant,
            borderRadius: BorderRadius.circular(borderRadius!),
            boxShadow: [
              // Adds a shadow to the button for a 3D effect.
              BoxShadow(
                color: isDisable
                    ? Colors.grey
                    : bottomShadowColor ??
                        Theme.of(context).colorScheme.primary,
                spreadRadius: spreadRadius,
                blurRadius: blurRadius,
                offset: const Offset(3, 3),
              ),
              BoxShadow(
                color:
                    topShadowColor ?? Theme.of(context).colorScheme.onPrimary,
                spreadRadius: spreadRadius,
                blurRadius: blurRadius,
                offset: const Offset(-3, -3),
              ),
            ],
          ),
          // The child property is centered by default.
          child: Center(child: child),
        ),
      ),
    );
  }
}
