import 'package:base/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScaffoldingApp extends ConsumerWidget {
  // a parssed widget from our secondary navigator [shell-route]

  final PreferredSizeWidget? appBar;
  final Widget? body;

  const ScaffoldingApp({
    super.key,
    this.appBar,
    this.body,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = ref.watch(themeProvider);

    return Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.go('/setting');
          theme.toogleTheme();
          print(theme.mode);
        },
      ),
    );
  }
}
