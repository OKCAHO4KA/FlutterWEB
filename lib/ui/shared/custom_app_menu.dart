import 'package:animate_do/animate_do.dart';
import 'package:bases_web/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomAppMenu extends StatefulWidget {
  const CustomAppMenu({super.key});

  @override
  State<CustomAppMenu> createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool isOpen = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (isOpen) {
            controller.reverse();
          } else {
            controller.forward();
          }
          setState(() {
            isOpen = !isOpen;
          });
          print('click');
        },
        child: Container(
          color: Colors.black,
          width: 150,
          height: isOpen ? 308 : 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                _MenuTitle(isOpen: isOpen, controller: controller),
                if (isOpen) ...[
                  _CustomMenuItem(
                    delay: 0,
                    text: 'Home',
                    onPressed: () {
                      pageProvider.goTo(0);
                    },
                  ),
                  _CustomMenuItem(
                    delay: 30,
                    text: 'About',
                    onPressed: () {
                      pageProvider.goTo(1);
                    },
                  ),
                  _CustomMenuItem(
                    delay: 60,
                    text: 'Pricing',
                    onPressed: () {
                      pageProvider.goTo(2);
                    },
                  ),
                  _CustomMenuItem(
                    delay: 90,
                    text: 'Contact',
                    onPressed: () {
                      pageProvider.goTo(3);
                    },
                  ),
                  _CustomMenuItem(
                    delay: 120,
                    text: 'Location',
                    onPressed: () {
                      pageProvider.goTo(4);
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  )
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomMenuItem extends StatefulWidget {
  final String text;
  final Function onPressed;
  final int delay;
  const _CustomMenuItem(
      {required this.text, required this.onPressed, this.delay = 0});

  @override
  State<_CustomMenuItem> createState() => _CustomMenuItemState();
}

class _CustomMenuItemState extends State<_CustomMenuItem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      from: 10,
      duration: const Duration(milliseconds: 150),
      delay: Duration(milliseconds: widget.delay),
      child: MouseRegion(
          onEnter: (_) {
            setState(() {
              isHover = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHover = false;
            });
          },
          child: GestureDetector(
              onTap: () {
                widget.onPressed();
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 150,
                height: 50,
                color: isHover ? Colors.teal : Colors.transparent,
                child: Center(
                  child: Text(
                    widget.text,
                    style:
                        GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                  ),
                ),
              ))),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    required this.isOpen,
    required this.controller,
  });

  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              width: isOpen ? 40 : 0),
          Text('Menú',
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 18)),
          const Spacer(),
          AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              color: Colors.white,
              progress: controller)
          // const Icon(Icons.menu, color: Colors.white)
        ],
      ),
    );
  }
}
