import 'package:bases_web/provider/counter_provider.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  final String query;
  const CounterProviderView({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: const _CounterProviderPageBody(),
      create: (context) => CounterProvider(query),
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody();

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Contador Provider',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text('Contador : ${counterProvider.counter}',
                style:
                    const TextStyle(fontSize: 80, fontWeight: FontWeight.bold)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
                text: 'Incrementar',
                onPressed: () {
                  counterProvider.incrementar();
                }),
            CustomFlatButton(
                text: 'Decrementar',
                onPressed: () {
                  counterProvider.decrementar();
                }),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
