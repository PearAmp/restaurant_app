import 'package:flutter/material.dart';

import '../../../theme/theme_style.dart';

class ShowHeadText extends StatefulWidget {
  const ShowHeadText({Key? key, required this.titlehead}) : super(key: key);
  final String titlehead;

  @override
  State<ShowHeadText> createState() => _ShowHeadTextState();
}

class _ShowHeadTextState extends State<ShowHeadText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.titlehead,
          style: Styles.textcontantThhearder,
        ),
      ],
    );
  }
}
