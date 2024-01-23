import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      child: Center(
          child: Text('ContactView',
              style: GoogleFonts.montserrat(
                  fontSize: 80, fontWeight: FontWeight.bold))),
    );
  }
}
