import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.active = true,
      this.onTap,
      this.width,
      this.height,
      this.paddingVertical,
      this.paddingHorizontal,
      this.marginHorizontal,
      this.marginVertical,
      this.color,
      this.textColor});
  final String text;
  final bool active;
  final void Function()? onTap;
  final double? width;
  final double? height;
  final double? paddingVertical;
  final double? paddingHorizontal;
  final double? marginHorizontal;
  final double? marginVertical;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        width: width,
        height: height ?? 60,
        padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal ?? 0, vertical: paddingVertical ?? 0),
        margin: EdgeInsets.symmetric(
            horizontal: marginHorizontal ?? 0, vertical: marginVertical ?? 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // color: active?AppColor.success500:color??AppColor.grey
            color: Colors.green),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20,
                color: active ? Colors.white : textColor ?? Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
