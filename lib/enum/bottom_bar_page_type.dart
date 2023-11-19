import 'package:flutter/material.dart';
import 'package:flutter_app_sample/feature/remote_config/presentation/forced_upgrade.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../my_home.dart';

final bottomBarPageTypeProvider =
    StateProvider<BottomBarPageType>((ref) => BottomBarPageType.home);

enum BottomBarPageType {
  home(
    'ホーム',
    Icon(Icons.home),
    MyHomePage(),
  ),
  secondPage(
    '強制アップデート',
    Icon(Icons.bookmark_outlined),
    ForcedUpgradePage(),
  );

  const BottomBarPageType(
    this.title,
    this.buttonIcon,
    this.widget,
  );

  final String title;
  final Icon buttonIcon;
  final Widget widget;
}
