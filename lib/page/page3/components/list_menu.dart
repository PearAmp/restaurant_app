import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:restaurant_app/theme/theme_style.dart';

class ListMenu extends StatefulWidget {
  const ListMenu(
      {Key? key, required this.title, required this.image, required this.price})
      : super(key: key);
  final String title;
  final String image;
  final String price;

  @override
  State<ListMenu> createState() => _ListMenuState();
}

class _ListMenuState extends State<ListMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(widget.image,
                    width: 200, height: 100, fit: BoxFit.fill))),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title,
                    style: Styles.textcontantEn
                        .copyWith(fontWeight: FontWeight.w600)),
                const Gap(10),
                Text('Brakefast, Lunch, Burger',
                    style: Styles.textcontantEn
                        .copyWith(fontWeight: FontWeight.w100)),
                const Gap(20),
                Row(
                  children: [
                    const Icon(Icons.delivery_dining_rounded),
                    Text(
                      widget.price,
                      style: Styles.textcontantEn,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
