import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, BoxConstraints constraints) =>
            (constraints.maxWidth >= 620)
                ? const _TabletDesktopMenu()
                : const _MobileMenu());
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
              text: "Contador con Stateful",
              onPressed: () {
                // Navigator.pushNamed(context, '/stateful');
                // navigationService.navigateTo('/stateful');
                locator<NavigationService>().navigateTo('/stateful');
              },
              color: Colors.black),
          const SizedBox(width: 10),
          CustomFlatButton(
              text: "Contador con Provider",
              onPressed: () {
                // Navigator.pushNamed(context, '/provider');
                // navigationService.navigateTo('/provider');
                locator<NavigationService>().navigateTo('/provider');
              },
              color: Colors.black),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Otra página",
            onPressed: () {
              // Navigator.pushNamed(context, '/abc');
              // navigationService.navigateTo('/abc');
              locator<NavigationService>().navigateTo('/abc');
            },
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Stateful 100",
            onPressed: () {
              locator<NavigationService>().navigateTo('/stateful/100');
            },
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Provider 200",
            onPressed: () {
              locator<NavigationService>().navigateTo('/provider?q=200');
            },
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
              text: "Contador con Stateful",
              onPressed: () {
                // Navigator.pushNamed(context, '/stateful');
                // navigationService.navigateTo('/stateful');
                locator<NavigationService>().navigateTo('/stateful');
              },
              color: Colors.black),
          const SizedBox(width: 10),
          CustomFlatButton(
              text: "Contador con Provider",
              onPressed: () {
                // Navigator.pushNamed(context, '/provider');
                // navigationService.navigateTo('/provider');
                locator<NavigationService>().navigateTo('/provider');
              },
              color: Colors.black),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Otra página",
            onPressed: () {
              // Navigator.pushNamed(context, '/abc');
              // navigationService.navigateTo('/abc');
              locator<NavigationService>().navigateTo('/abc');
            },
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Stateful 100",
            onPressed: () {
              locator<NavigationService>().navigateTo('/stateful/100');
            },
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Provider 200",
            onPressed: () {
              locator<NavigationService>().navigateTo('/provider?q=200');
            },
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
