// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:loovic/ui/page/root/root_tab/ui_page_root_main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@immutable
class UiPageRoot extends HookConsumerWidget {
  const UiPageRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: UiPageRootMain(),
      ),
    );
  }
}
