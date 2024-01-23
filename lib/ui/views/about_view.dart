import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
          child: Text('AboutView',
              style: GoogleFonts.montserrat(
                  fontSize: 80, fontWeight: FontWeight.bold))),
    );
  }
}
