import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_portifolio/theme/theme.dart';
import 'package:provider/provider.dart';

class AppBarNavText extends StatefulWidget {
  final String texto;

  const AppBarNavText({super.key, required this.texto});

  @override
  State<AppBarNavText> createState() => _AppBarNavTextState();
}

class _AppBarNavTextState extends State<AppBarNavText> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Text(
              widget.texto,
              style: GoogleFonts.roboto(
                fontSize: 15,
                color: theme.textTheme.bodySmall?.color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
