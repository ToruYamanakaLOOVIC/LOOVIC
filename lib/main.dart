import 'package:flutter/material.dart';
import 'package:loovic/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loovic/ui/page/login/ui_page_login.dart';
import 'package:loovic/ui/page/root/root_tab/edit/ui_page_root_edit.dart';
import 'package:loovic/ui/page/root/root_tab/ui_page_root_setting.dart';
import 'package:loovic/ui/page/root/root_util/ui_page_root_navigation.dart';
import 'package:loovic/ui/page/root/ui_page_root.dart';
import 'package:loovic/ui/page/splash/ui_page_splash.dart';

final routeObserver = RouteObserver<PageRoute>();

void main() async {
  // runApp() が呼ばれる前にFlutterエンジンを利用するための処理。
  // つまり、runApp()前にやっておきたい処理などがある場合は
  // ensureInitialized()を呼んでおきます。
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase初期化
  //await Firebase.initializeApp();
  // push通知のイベントの設定
  //FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: THEME_APP,
      home: const UiPageSplash(),
      navigatorObservers: [
        routeObserver,
      ],
      routes: {
        '/login': (context) => const UiPageLogin(),
        '/login/root': (context) => const UiPageRoot(),
        '/login/root/navi': (context) => UiPageRootNavigation(),
        '/login/root/edit': (context) => UiPageRootEdit(),
        '/login/root/setting': (context) => const UiPageRootSetting(),
      },
    );
  }
}
