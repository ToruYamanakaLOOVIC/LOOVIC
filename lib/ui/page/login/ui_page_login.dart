import 'package:flutter/material.dart';
import 'package:loovic/providers/app_provider.dart';
import 'package:loovic/repotitory/http_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loovic/ui/page/root/ui_page_root.dart';
import 'package:loovic/ui/page/splash/ui_page_splash.dart';

@immutable
class UiPageLogin extends HookConsumerWidget {
  const UiPageLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');

    //各種設定
    final appProvider = ref.watch(apptNotifierProvider);

    var _userController = TextEditingController()..text = appProvider.uID;

    return Scaffold(
      //カルーセルページ
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 90,
                child: TextField(
                  enabled: true,
                  controller: _userController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelText: 'ユーザーID',
                    hintText: 'xxxxx',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String value) {
                    final notifier = ref.watch(apptNotifierProvider.notifier);
                    notifier.save(app: appProvider.copyWith(uID: value));
                  },
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 30,
              ),
              SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                  onPressed: () async {
                    httpRepositoryLogin(context, uid: appProvider.uID)
                        .then((value) {
                      if (value) {
                        Navigator.pushNamed(context, '/login/root');
                      } else {}
                    });
                  },
                  child: const Text(
                    '接続開始',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
