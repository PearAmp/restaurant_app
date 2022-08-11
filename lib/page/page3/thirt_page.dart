import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/components/search/search_field.dart';
import 'package:restaurant_app/theme/theme_style.dart';

import 'components/button_popup.dart';
import 'components/list_menu.dart';

class ThirtPage extends StatefulWidget {
  const ThirtPage({Key? key}) : super(key: key);

  @override
  State<ThirtPage> createState() => _ThirtPageState();
}

class _ThirtPageState extends State<ThirtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.maincolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: const [
            ButtonPopup(),
            Gap(20),
            ListMenu(
              image: 'assets/images/food1.png',
              title: 'Fast Food',
              price: '499 Bath',
            ),
            Divider(
              height: 40,
              thickness: 2,
              endIndent: 0,
              color: Colors.black,
            ),
            ListMenu(
              image: 'assets/images/food2.jpg',
              title: 'Japan Food',
              price: '1,999 Bath',
            ),
            Divider(
              height: 40,
              thickness: 2,
              endIndent: 0,
              color: Colors.black,
            ),
            ListMenu(
              image: 'assets/images/food3.jpg',
              title: 'Thai Food',
              price: '299 Bath',
            ),
            Divider(
              height: 40,
              thickness: 2,
              endIndent: 0,
              color: Colors.black,
            ),
            ListMenu(
              image: 'assets/images/food4.jpg',
              title: 'Salad',
              price: '199 Bath',
            ),
            Divider(
              height: 40,
              thickness: 2,
              endIndent: 0,
              color: Colors.black,
            ),
            ListMenu(
              image: 'assets/images/food1.png',
              title: 'Fast Food',
              price: '499 Bath',
            ),
            Divider(
              height: 40,
              thickness: 2,
              endIndent: 0,
              color: Colors.black,
            ),
            ListMenu(
              image: 'assets/images/food2.jpg',
              title: 'Japan Food',
              price: '1,999 Bath',
            ),
            Divider(
              height: 40,
              thickness: 2,
              endIndent: 0,
              color: Colors.black,
            ),
            ListMenu(
              image: 'assets/images/food3.jpg',
              title: 'Thai Food',
              price: '299 Bath',
            ),
            Divider(
              height: 40,
              thickness: 2,
              endIndent: 0,
              color: Colors.black,
            ),
            ListMenu(
              image: 'assets/images/food4.jpg',
              title: 'Salad',
              price: '199 Bath',
            ),
          ],
        ),
      ),
    );
  }
}
