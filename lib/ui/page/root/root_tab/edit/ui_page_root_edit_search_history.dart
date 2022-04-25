import 'package:flutter/material.dart';
import 'package:loovic/module/json/JsonHistory.dart';
import 'package:loovic/providers/app_provider.dart';
import 'package:loovic/repotitory/http_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

@immutable
class UiPageRootEditSearchHistory extends HookConsumerWidget {
  const UiPageRootEditSearchHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');
    initializeDateFormatting('ja_JP');
    //各種設定
    final appProvider = ref.watch(apptNotifierProvider);

    final history = useState(const JsonSaerchHistory());

    useEffect(() {
      debugPrint('useEffect like initState()');
      httpRepositorySearchList(context, uid: appProvider.uID)
          .then((value) => history.value = value);

      return () {
        debugPrint('dispose!');
      };
    }, []);

    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, const JsonSaerchParam());
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ルート検索履歴'),
        ),
        //カルーセルページ
        body: Container(
          color: const Color.fromARGB(0xff, 0xF0, 0xF3, 0xF6),
          child: ListView.builder(
            itemCount: history.value.history.length,
            itemBuilder: (BuildContext context, int index) {
              DateTime datetime =
                  DateTime.parse('${history.value.history[index].date}Z')
                      .toLocal(); // StringからDate

              var formatter = DateFormat('yyyy/MM/dd(E) HH:mm', 'ja_JP');
              return Card(
                child: ListTile(
                  title: Text(
                      '${history.value.history[index].from} -> ${history.value.history[index].to}'),
                  subtitle: Text(formatter.format(datetime)),
                  onTap: () {
                    Navigator.pop(context, history.value.history[index]);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
