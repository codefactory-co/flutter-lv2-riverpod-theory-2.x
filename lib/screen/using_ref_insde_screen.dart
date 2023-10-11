import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/layout/default_layout.dart';
import 'package:riverpod_theory/riverpod/using_ref_inside_notifier.dart';

class UsingRefInsideScreen extends ConsumerWidget {
  const UsingRefInsideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(shoppingListRefProvider);
    final toggleStatus = ref.watch(toggleEnumProvider);

    return DefaultLayout(
      title: 'UsingRefInsideProvider',
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: items
                    .map(
                      (e) => CheckboxListTile(
                        value: e.hasBought,
                        title: Text('${e.name}(${e.quantity})'),
                        onChanged: (value) {
                          ref.read(shoppingListRefProvider.notifier).toggleTodo(
                                name: e.name,
                              );
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      ref.read(toggleEnumProvider.notifier).update(
                            (state) => state == ToggleEnum.all
                                ? ToggleEnum.none
                                : ToggleEnum.all,
                          );
                    },
                    child: Text(toggleStatus.toString()),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      ref.read(shoppingListRefProvider.notifier).toggleAll();
                    },
                    child: Text('TOGGLE ALL'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
