import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:restaurant_app/page/page1/components/how_it_work.dart';
import 'package:restaurant_app/theme/theme_style.dart';

import '../../components/search/search_field.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.maincolor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pear\nRestaurant',
                  style: Styles.textcontantEn.copyWith(fontSize: 20),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/food.png',
                  width: 100,
                ),
                Image.asset(
                  'assets/images/pizza.png',
                  width: 100,
                )
              ],
            ),
            const Gap(20),
            Center(
              child: Text(
                'Pear Restaurant\nready to serve',
                style: Styles.textcontantEn.copyWith(fontSize: 40),
              ),
            ),
            const Gap(30),
            const SearchField(
              iconleft: Icons.search,
              label: 'search for pear restaurant',
            ),
            const Gap(40),
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      'การใช้งาน',
                      style: Styles.textcontantThhearder,
                    )
                  ],
                ),
              ],
            ),
            const Gap(20),
            SizedBox(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    HowItWork(
                      image: 'assets/images/open.png',
                      title: 'Stap 1',
                      subtitle: 'ทำการเปิดแอปพลิเคชันบนมือถือ',
                    ),
                    HowItWork(
                      image: 'assets/images/search.png',
                      title: 'Stap 2',
                      subtitle: 'ทำการค้นหาเมนูที่ต้องการจะสั่ง',
                    ),
                    HowItWork(
                      image: 'assets/images/delivery.png',
                      title: 'Stap 3',
                      subtitle: 'เลือกวิธีการส่งอาหาร',
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
