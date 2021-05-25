import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final String text;
  final double width;
  final double height;
  final EdgeInsets margin;
  final double fontSize;
  final bool hasIcon;

  const CustomButton({
    Key key,
    @required this.onPressed,
    this.backgroundColor = Colors.transparent,
    this.text = '',
    this.width = double.infinity,
    this.height,
    this.margin,
    this.fontSize = 17,
    this.hasIcon = false,
  })  : assert(onPressed != null, "onPressed function shouldn't be null"),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              this.text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 8),
            hasIcon
                ? Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  )
                : Container(),
          ],
        ),
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.resolveWith(
              (states) => EdgeInsets.only(top: 12)),
          backgroundColor:
              MaterialStateColor.resolveWith((states) => backgroundColor),
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
      ),
    );
  }
}
