import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField(
      {super.key,
      this.password = false,
      this.hint,
      this.controller,
      this.validator,
      this.onSaved,
      this.onChanged,
      this.prefix,
      this.obscureText = false,
      this.suffix,
      this.marginHorizontalMargin = 15,
      this.prefixWidth,
      this.prefixHeight});
  final String? hint;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final String? Function(String? value)? onSaved;
  final void Function(String value)? onChanged;
  final Widget? prefix;
  final double? prefixWidth;
  final double? prefixHeight;
  final Widget? suffix;
  final bool password;
  final double marginHorizontalMargin;
  bool obscureText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: widget.marginHorizontalMargin),
      // height: 60,
      decoration: BoxDecoration(
          // color: Colors.transparent,
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: TextFormField(
          obscureText: widget.obscureText,
          controller: widget.controller,
          validator: widget.validator,
          onChanged: widget.onChanged,
          onSaved: widget.onSaved,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
              // prefixIcon: Container(margin: EdgeInsets.symmetric(horizontal: 12), child: widget.prefix,),
              // suffixIcon: passwordWidget(),
              // prefixIconConstraints: BoxConstraints(
              // maxWidth: widget.prefixWidth??50,
              // maxHeight: widget.prefixHeight??50
              // ),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              // border: InputBorder.none,
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              hintText: widget.hint,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              hintStyle: const TextStyle(color: Colors.grey)),
        ),
      ),
    );
  }

  passwordWidget() {
    if (widget.password) {
      return IconButton(
        onPressed: () {
          setState(() {
            widget.obscureText = !widget.obscureText;
          });
        },
        icon:
            Icon(widget.obscureText ? Icons.visibility_off : Icons.visibility),
      );
    } else {
      return widget.suffix;
    }
  }
}
