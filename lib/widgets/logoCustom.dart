import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoCustom extends StatefulWidget {
  const LogoCustom({super.key});

  @override
  State<LogoCustom> createState() => _LogoCustomState();
}

class _LogoCustomState extends State<LogoCustom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Text(
            "Raphael",
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
