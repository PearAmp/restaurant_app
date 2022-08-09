import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:restaurant_app/page/page1/components/show_head_text.dart';
import 'package:restaurant_app/page/page2/components/menu.dart';
import 'package:restaurant_app/theme/theme_style.dart';

class SeconPage extends StatefulWidget {
  const SeconPage({Key? key}) : super(key: key);

  @override
  State<SeconPage> createState() => _SeconPageState();
}

class _SeconPageState extends State<SeconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.maincolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
            const Gap(20),
            Image.asset(
              'assets/images/courier.png',
              height: 200,
            ),
            const Gap(20),
            const ShowHeadText(titlehead: 'เมนูใหม่'),
            const Gap(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  FoodMenu(
                      image: 'assets/images/food1.png',
                      title: 'ชุดอิ่มคุ้ม',
                      time: '25-35\nmin',
                      price: '499 Bath'),
                  FoodMenu(
                      image: 'assets/images/food2.jpg',
                      title: 'ญี่ปุ่น',
                      time: '30-40\nmin',
                      price: '999 Bath'),
                  FoodMenu(
                      image: 'assets/images/food3.jpg',
                      title: 'กุ้งผัดซอส',
                      time: '10-20\nmin',
                      price: '199 Bath'),
                  FoodMenu(
                      image: 'assets/images/food4.jpg',
                      title: 'สลัด',
                      time: '10-20\nmin',
                      price: '199 Bath'),
                ],
              ),
            ),
            const Gap(20),
            const ShowHeadText(titlehead: 'เมนูยอดฮิต'),
            const Gap(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  FoodMenu(
                      image: 'assets/images/food1.png',
                      title: 'ชุดอิ่มคุ้ม',
                      time: '25-35\nmin',
                      price: '499 Bath'),
                  FoodMenu(
                      image: 'assets/images/food2.jpg',
                      title: 'ญี่ปุ่น',
                      time: '30-40\nmin',
                      price: '999 Bath'),
                  FoodMenu(
                      image: 'assets/images/food3.jpg',
                      title: 'กุ้งผัดซอส',
                      time: '10-20\nmin',
                      price: '199 Bath'),
                  FoodMenu(
                      image: 'assets/images/food4.jpg',
                      title: 'สลัด',
                      time: '10-20\nmin',
                      price: '199 Bath'),
                ],
              ),
            ),
            const Gap(20),
            const ShowHeadText(titlehead: 'ส่งฟรี'),
            const Gap(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  FoodMenu(
                      image: 'assets/images/food1.png',
                      title: 'ชุดอิ่มคุ้ม',
                      time: '25-35\nmin',
                      price: '499 Bath'),
                  FoodMenu(
                      image: 'assets/images/food2.jpg',
                      title: 'ญี่ปุ่น',
                      time: '30-40\nmin',
                      price: '999 Bath'),
                  FoodMenu(
                      image: 'assets/images/food3.jpg',
                      title: 'กุ้งผัดซอส',
                      time: '10-20\nmin',
                      price: '199 Bath'),
                  FoodMenu(
                      image: 'assets/images/food4.jpg',
                      title: 'สลัด',
                      time: '10-20\nmin',
                      price: '199 Bath'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
