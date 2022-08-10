import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/theme_style.dart';

class ButtonPopup extends StatefulWidget {
  const ButtonPopup({Key? key}) : super(key: key);

  @override
  State<ButtonPopup> createState() => _ButtonPopupState();
}

class _ButtonPopupState extends State<ButtonPopup> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.only(left: 20),
            color: Colors.white,
            child: TextField(
              style: GoogleFonts.kanit(),
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search For menu',
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent, primary: Colors.transparent),
            child: const Icon(
              Icons.dehaze,
              color: Colors.black,
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)),
                ),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width - 20,
                ),
                context: context,
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                      Positioned(
                        right: 10,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(20, 20),
                              shadowColor: Colors.transparent,
                              primary: Styles.maincolor),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'x',
                              textAlign: TextAlign.center,
                              style: Styles.textcontantEn
                                  .copyWith(fontSize: 25, color: Colors.black),
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Menu',
                              style:
                                  Styles.textcontantEn.copyWith(fontSize: 30),
                            ),
                            const Gap(40),
                            Row(
                              children: [
                                Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                  ),
                                  height: 30,
                                  child: Center(
                                      child: Text('Kbab',
                                          style: Styles.textcontantEn
                                              .copyWith(color: Colors.white))),
                                ),
                                Gap(10),
                                Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  height: 30,
                                  child: Center(
                                      child: Text(
                                    'Kbab',
                                    style: Styles.textcontantEn,
                                  )),
                                ),
                                Gap(10),
                                Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  height: 30,
                                  child: Center(
                                      child: Text(
                                    'Kbab',
                                    style: Styles.textcontantEn,
                                  )),
                                ),
                                Gap(10),
                                Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  height: 30,
                                  child: Center(
                                      child: Text(
                                    'Kbab',
                                    style: Styles.textcontantEn,
                                  )),
                                ),
                              ],
                            ),
                            const Gap(20),
                            Row(
                              children: [
                                Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                  ),
                                  height: 30,
                                  child: Center(
                                      child: Text('Kbab',
                                          style: Styles.textcontantEn
                                              .copyWith(color: Colors.white))),
                                ),
                                const Gap(10),
                                Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  height: 30,
                                  child: Center(
                                      child: Text(
                                    'Kbab',
                                    style: Styles.textcontantEn,
                                  )),
                                ),
                                const Gap(10),
                                Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                  ),
                                  height: 30,
                                  child: Center(
                                      child: Text(
                                    'Kbab',
                                    style: Styles.textcontantEn
                                        .copyWith(color: Colors.white),
                                  )),
                                ),
                                const Gap(10),
                                Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                  ),
                                  height: 30,
                                  child: Center(
                                      child: Text(
                                    'Kbab',
                                    style: Styles.textcontantEn
                                        .copyWith(color: Colors.white),
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
//  return Stack(
//                     children: <Widget>[
//                       Positioned(
//                         right: 10,
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                               minimumSize: Size(20, 20),
//                               shadowColor: Colors.transparent,
//                               primary: Colors.grey),
//                           child: Padding(
//                             padding: EdgeInsets.only(bottom: 5),
//                             child: Text(
//                               'x',
//                               textAlign: TextAlign.center,
//                               style: Styles.textcontantEn
//                                   .copyWith(fontSize: 25, color: Colors.black),
//                             ),
//                           ),
//                           onPressed: () => Navigator.pop(context),
//                         ),
//                       ),
//                     ],
//                   );