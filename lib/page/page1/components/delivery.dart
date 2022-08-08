import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../theme/theme_style.dart';

class Delivery extends StatefulWidget {
  const Delivery(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final String image;
  final String title;
  final String subtitle;

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Image.asset(
            widget.image,
            width: 200,
          ),
          const Gap(20),
          Text(
            widget.title,
            style: Styles.textcontantEn.copyWith(fontSize: 20),
          ),
          const Gap(20),
          Text(
            widget.subtitle,
            style: Styles.textcontantTh,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
