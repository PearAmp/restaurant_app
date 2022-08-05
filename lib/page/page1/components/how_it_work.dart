import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:restaurant_app/theme/theme_style.dart';

class HowItWork extends StatefulWidget {
  const HowItWork(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final String image;
  final String title;
  final String subtitle;

  @override
  State<HowItWork> createState() => _HowItWorkState();
}

class _HowItWorkState extends State<HowItWork> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.white,
          width: 200,
          child: SizedBox(
            height: 240,
            child: Column(
              children: [
                Image.asset(
                  widget.image,
                ),
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: Styles.textcontantEn
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const Gap(10),
                Text(
                  widget.subtitle,
                  textAlign: TextAlign.center,
                  style: Styles.textcontantTh,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
