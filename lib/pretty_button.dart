import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PrettyButton extends StatelessWidget {
//if you make true then your button will be disabled
  bool isDisable;
  double? height;
  double? width;
  double? blurRadius;
  double? spreadRadius;
  double? borderRadius;
  Color? backgroundColor;

  //shadow color of top-center and top-left side
  Color? topShadowColor;

  //shadow color of bottom-center and bottom-right side
  Color? bottomShadowColor;

  //padding of child widget
  EdgeInsets innerPadding;

  //padding of whole button
  EdgeInsets outerPadding;

  //you can add any widget here for example text,icon,image etc...
  Widget child;

//this will call  when you click on the button
  VoidCallback? onTap;

  PrettyButton({
    super.key,
    required this.onTap,
    required this.child,
    this.height = 50.0,
    this.width = 150.0,
    this.blurRadius = 8.0,
    this.spreadRadius = 2.0,
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
      padding: outerPadding,
      child: GestureDetector(
        onTap: isDisable ? null : onTap,
        child: Container(
          padding: innerPadding,
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: isDisable
                ? Colors.grey.shade300
                : backgroundColor ??
                    Theme.of(context).colorScheme.outlineVariant,
            borderRadius: BorderRadius.circular(borderRadius!),
            boxShadow: [
              BoxShadow(
                color: isDisable
                    ? Colors.grey
                    : bottomShadowColor ??
                        Theme.of(context).colorScheme.primary,
                spreadRadius: spreadRadius!,
                blurRadius: blurRadius!,
                offset: const Offset(4, 4),
              ),
              BoxShadow(
                color:
                    topShadowColor ?? Theme.of(context).colorScheme.onPrimary,
                spreadRadius: spreadRadius!,
                blurRadius: blurRadius!,
                offset: const Offset(-4, -4),
              ),
            ],
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
