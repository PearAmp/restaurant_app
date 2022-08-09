import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:restaurant_app/theme/theme_style.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu(
      {Key? key,
      required this.image,
      required this.title,
      required this.time,
      required this.price})
      : super(key: key);
  final String image;
  final String title;
  final String time;
  final String price;

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: 200,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(widget.image,
                        width: 200, height: 100, fit: BoxFit.fill),
                  ),
                  const Gap(10),
                  Text(
                    widget.title,
                    style: Styles.textcontantTh
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'อาหารคาวหวาน สไตล์ครัวเปีย',
                    style: Styles.textcontantTh,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.delivery_dining_rounded),
                      Gap(10),
                      Text(
                        widget.price,
                        style: Styles.textcontantEn,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: 90,
              top: 15,
              child: Container(
                width: 90,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  widget.time,
                  style: Styles.textcontantEn.copyWith(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              )),
        ],
      ),
    );
  }
}
