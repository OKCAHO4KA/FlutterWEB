import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('404',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Text('No se encontró la página',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
            const SizedBox(height: 20),
            CustomFlatButton(
                text: 'Regresar',
                onPressed: () {
                  Navigator.pushNamed(context, '/stateful');
                })
          ],
        ),
      ),
    );
  }
}
