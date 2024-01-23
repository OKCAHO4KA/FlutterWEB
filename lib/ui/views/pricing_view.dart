import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingView extends StatelessWidget {
  const PricingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lime,
      child: Center(
          child: Text('PricingView',
              style: GoogleFonts.montserrat(
                  fontSize: 80, fontWeight: FontWeight.bold))),
    );
  }
}
