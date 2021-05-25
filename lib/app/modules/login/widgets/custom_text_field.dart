import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key key,
    this.textEditingController,
    this.errorText$,
    @required this.textStream,
    this.width = double.infinity,
    this.height = 90,
    this.suffixIconData,
    this.hintText,
    this.margin,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.isCollapsed = false,
    this.contentPadding,
    this.isDense = true,
    this.textAlignVertical = TextAlignVertical.bottom,
    this.enabled = true,
    this.readOnly = false,
    this.maxLength,
    this.enabledBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black54,
        // width: 0,
      ),
    ),
    @required this.wasItValidatedStream,
    this.fontSize = 15,
  })  : assert(textStream != null, "textStream shouldn't be null"),
        assert(wasItValidatedStream != null,
            "wasItValidatedStream shouldn't be null"),
        super(key: key);

  final TextEditingController textEditingController;
  final RxString errorText$;
  final RxBool wasItValidatedStream;
  final RxString textStream;
  final double width;
  final double height;
  final IconData suffixIconData;
  final String hintText;
  final EdgeInsets margin;
  final bool obscureText;
  final TextInputType keyboardType;
  final int maxLines;
  final bool isCollapsed;
  final EdgeInsets contentPadding;
  final bool isDense;
  final TextAlignVertical textAlignVertical;
  final bool enabled;
  final bool readOnly;
  final OutlineInputBorder enabledBorder;
  final int maxLength;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          // color: Colors.red,
          width: width,
          height: height,
          margin: margin,
          child: TextField(
            maxLength: maxLength,
            maxLines: maxLines,
            controller: textEditingController,
            obscureText: obscureText,
            style: TextStyle(
              color: Colors.black87,
              fontSize: fontSize,
            ),
            textAlignVertical: textAlignVertical,
            enabled: enabled,
            readOnly: readOnly,
            decoration: InputDecoration(
              contentPadding: contentPadding,
              suffixIcon: suffixIconData != null
                  ? Icon(
                      suffixIconData,
                      size: 22,
                      color: errorText$ != null
                          ? errorText$.value.isNotEmpty
                              ? Colors.red
                              : null
                          : null,
                    )
                  : null,
              hintText: hintText ?? '',
              hintStyle: TextStyle(
                color: Colors.black54,
                fontSize: fontSize,
              ),
              helperText: '',
              errorText: errorText$ != null
                  ? errorText$.value.isNotEmpty
                      ? errorText$.value
                      : null
                  : null,
              errorStyle: TextStyle(
                color: Colors.red,
                fontSize: 13,
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              enabledBorder: enabledBorder,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: CustomColor.CELESTE_OSCURO, width: 1.5),
              ),
              border: const OutlineInputBorder(),
              isDense: true,
              fillColor: Colors.white,
              filled: true,
              isCollapsed: isCollapsed,
            ),
            onChanged: (value) {
              if (wasItValidatedStream.value) {
                errorText$.value = '';
              }
              textStream.value = value;
            },
          ),
        ));
  }
}
