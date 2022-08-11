import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:restaurant_app/components/search/search_field.dart';
import 'package:restaurant_app/theme/theme_style.dart';
import 'package:flutter_facebook_app_links/flutter_facebook_app_links.dart';
import 'package:url_launcher/url_launcher.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  final Uri _url = Uri.parse('https://www.facebook.com/');
  final Uri _url1 = Uri.parse('https://www.apple.com/');
  final Uri _url2 = Uri.parse('https://mail.google.com/');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchUrl1() async {
    if (!await launchUrl(_url1)) {
      throw 'Could not launch $_url1';
    }
  }

  Future<void> _launchUrl2() async {
    if (!await launchUrl(_url2)) {
      throw 'Could not launch $_url2';
    }
  }

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
                Text('Login below or create a new\n\n PearRestaurant account',
                    style: Styles.textcontantEn),
                const Gap(30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    color: Colors.white,
                    child: InkWell(
                      onTap: _launchUrl2,
                      child: Text(
                        'Continue with Google',
                        style: Styles.textcontantEn
                            .copyWith(fontSize: 18, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const Gap(10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    color: Colors.black,
                    child: InkWell(
                      onTap: _launchUrl1,
                      child: Text(
                        'Continue with Apple',
                        style: Styles.textcontantEn
                            .copyWith(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const Gap(10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    color: Colors.blue.shade600,
                    child: InkWell(
                      onTap: _launchUrl,
                      child: Text(
                        'Continue with Facebook',
                        style: Styles.textcontantEn
                            .copyWith(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const Gap(20),
                Row(
                  children: [
                    const Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    )),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'or login using email',
                        textAlign: TextAlign.center,
                        style: Styles.textcontantEn.copyWith(fontSize: 20),
                      ),
                    ),
                    const Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    )),
                  ],
                ),
                const Gap(30),
                const SearchField(label: 'Email'),
                const Gap(10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    color: Colors.grey.shade900,
                    child: Text(
                      'Next',
                      style: Styles.textcontantEn
                          .copyWith(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Gap(20),
                Text(
                  'This site is protected by the Google Privacy  \n \n Policy and Terms of Service apply.',
                  textAlign: TextAlign.center,
                  style: Styles.textcontantEn.copyWith(fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
