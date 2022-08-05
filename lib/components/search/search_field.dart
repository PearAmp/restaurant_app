import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatefulWidget {
  const SearchField(
      {Key? key, this.iconleft, this.iconrigth, required this.label})
      : super(key: key);
  final IconData? iconleft;
  final IconData? iconrigth;
  final String label;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(
                widget.iconleft,
                color: Colors.black,
              ),
              suffixIcon: Icon(
                widget.iconrigth,
                color: Colors.black,
              ),

              hintText: widget.label,
              // pass the hint text parameter here
              hintStyle: TextStyle(color: Colors.grey),
            ),
            style: GoogleFonts.kanit(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
