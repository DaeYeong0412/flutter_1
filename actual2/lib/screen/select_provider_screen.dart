import 'package:actual2/layout/default_layout.dart';
import 'package:actual2/riverpod/select_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectProvider.select((value) => value.isSpicy));
    ref.listen(
      selectProvider.select((value) => value.hasBought),
      (previous, next) {
        print('next: $next');
      },
    );

    return DefaultLayout(
        title: 'SelectProviderScreen',
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state.toString()),
              ElevatedButton(
                onPressed: () {
                  ref.read(selectProvider.notifier).toggleIsSpicy();
                },
                child: Text('Spicy Toggle'),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(selectProvider.notifier).toggleHasBought();
                },
                child: Text('HasBought Toggle'),
              ),
            ],
          ),
        ));
  }
}
