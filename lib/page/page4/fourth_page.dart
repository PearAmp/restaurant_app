import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:restaurant_app/theme/theme_style.dart';
import 'package:flutter_facebook_app_links/flutter_facebook_app_links.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.maincolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Text(
              'Pear\nRestaurant',
              style: Styles.textcontantEn.copyWith(fontSize: 20),
            ),
            const Gap(20),
            Column(
              children: [
                Text(
                  'Create an account or login',
                  style: Styles.textcontantEn.copyWith(fontSize: 20),
                ),
                const Gap(10),
                Text('Login below or create a new\n PearRestaurant account',
                    style: Styles.textcontantEn),
                const Gap(20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    color: Colors.white,
                    child: Text(
                      'Continue with Google',
                      style: Styles.textcontantEn.copyWith(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Gap(10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    color: Colors.black,
                    child: Text(
                      'Continue with Apple',
                      style: Styles.textcontantEn
                          .copyWith(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Gap(10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    color: Colors.blue.shade700,
                    child: Text(
                      'Continue with Facebook',
                      style: Styles.textcontantEn
                          .copyWith(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
