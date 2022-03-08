import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loovic/providers/app_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loovic/ui/page/root/root_util/ui_page_root_util_joystick.dart';

@immutable
class UiPageRootSetting extends HookConsumerWidget {
  const UiPageRootSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');

    final provider = ref.watch(apptNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
        automaticallyImplyLeading: true,
      ),
      //カルーセルページ
      body: Container(
        color: const Color.fromARGB(0xff, 0xF0, 0xF3, 0xF6),
        child: ListView(
          children: [
            //地図設定
            Container(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: const Text('Map設定'),
            ),
            Card(
              child: ListTile(
                title: const Text('サークル半径(m)'),
                trailing: Container(
                  padding: const EdgeInsets.all(5),
                  width: 150,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          enabled: true,
                          textAlign: TextAlign.right,
                          controller:
                              TextEditingController(text: '${provider.radius}'),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '',
                            hintText: '範囲(m)',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          onChanged: (String value) {
                            if (value.isNotEmpty) {
                              final notifier =
                                  ref.watch(apptNotifierProvider.notifier);
                              final radius = double.parse(value);
                              notifier.save(
                                  app: provider.copyWith(radius: radius));
                            }
                          },
                        ),
                      ),
                      const Text('m'),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('送信インターバル(ms)'),
                trailing: Container(
                  padding: const EdgeInsets.all(5),
                  width: 150,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          enabled: true,
                          textAlign: TextAlign.right,
                          controller: TextEditingController(
                              text: '${provider.interval}'),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '',
                            hintText: '(ms)',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          onChanged: (String value) {
                            if (value.isNotEmpty) {
                              final notifier =
                                  ref.watch(apptNotifierProvider.notifier);
                              final interval = int.parse(value);

                              notifier.save(
                                  app: provider.copyWith(interval: interval));
                            }
                          },
                        ),
                      ),
                      const Text('ms'),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('サウンド音量'),
                trailing: Container(
                  padding: const EdgeInsets.all(5),
                  width: 150,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          enabled: true,
                          textAlign: TextAlign.right,
                          controller:
                              TextEditingController(text: '${provider.sound}'),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '',
                            hintText: '(%)',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          onChanged: (String value) {
                            if (value.isNotEmpty) {
                              final notifier =
                                  ref.watch(apptNotifierProvider.notifier);
                              final sound = int.parse(value);

                              notifier.save(
                                  app: provider.copyWith(sound: sound));
                            }
                          },
                        ),
                      ),
                      const Text('%'),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: SwitchListTile(
                value: provider.isDebug,
                title: const Text('デバッグ表示'),
                onChanged: (bool onoff) {
                  final notifier = ref.watch(apptNotifierProvider.notifier);
                  notifier.save(app: provider.copyWith(isDebug: onoff));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: TextButton(
                  child: const Text('ジョイスティック'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return const UiPageRootJoyStick();
                      },
                    ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
