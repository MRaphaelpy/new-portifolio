import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_portifolio/customAppBar/appBarNavText.dart';
import 'package:new_portifolio/theme/theme.dart';
import 'package:new_portifolio/widgets/LogoCustom.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);

    return Container(
      color: theme.appBarTheme.backgroundColor,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Tela pequena: exibir menu hambúrguer
            return Row(
              children: [
                const LogoCustom(),
                const Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: theme.iconTheme.color,
                  ),
                  onPressed: () {
                    showMenu(
                      context: context,
                      position: const RelativeRect.fromLTRB(56, 56, 0, 0),
                      items: [
                        PopupMenuItem(
                          child: AppBarNavText(texto: "Home"),
                          value: "Home",
                          textStyle: GoogleFonts.roboto(
                            color: Colors.green,
                            fontSize: 15,
                          ),
                        ),
                        PopupMenuItem(
                          child: AppBarNavText(texto: "Sobre Mim"),
                          value: "Sobre Mim",
                          textStyle: theme.textTheme.bodySmall,
                        ),
                        PopupMenuItem(
                          child: AppBarNavText(texto: "Skills"),
                          value: "Skills",
                          textStyle: theme.textTheme.bodySmall,
                        ),
                        PopupMenuItem(
                          child: AppBarNavText(texto: "Contato"),
                          value: "Contato",
                          textStyle: theme.textTheme.bodySmall,
                        ),
                      ],
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.language,
                    color: theme.iconTheme.color,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: themeProvider.isDarkMode
                      ? Icon(
                          Icons.dark_mode,
                          color: theme.iconTheme.color,
                        )
                      : Icon(
                          Icons.light_mode,
                          color: theme.iconTheme.color,
                        ),
                  onPressed: () {
                    themeProvider.toggleTheme();
                  },
                ),
              ],
            );
          } else {
            // Tela grande: exibir itens do menu normalmente
            return Row(
              children: [
                const LogoCustom(),
                const Spacer(
                  flex: 1,
                ),
                const AppBarNavText(texto: "Home"),
                const AppBarNavText(texto: "Sobre Mim"),
                const AppBarNavText(texto: "Skills"),
                const AppBarNavText(texto: "Contato"),
                IconButton(
                  icon: Icon(
                    Icons.language,
                    color: theme.iconTheme.color,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: themeProvider.isDarkMode
                      ? Icon(
                          Icons.dark_mode,
                          color: theme.iconTheme.color,
                        )
                      : Icon(
                          Icons.light_mode,
                          color: theme.iconTheme.color,
                        ),
                  onPressed: () {
                    themeProvider.toggleTheme();
                  },
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
