import 'package:betkom2/Models/custom_app_bar.dart';
import 'package:betkom2/Models/sample_widget_bar.dart';
import 'package:flutter/material.dart';

const kFontFamily = 'Agdasima';
List<Widget> screens = [
  const SampleWidgetMainPage(),
  const SampleWidgetMainPageOrderPage(),
  const SampleWidgetMainPageNotificationsPage(),
  const SampleWidgetMainPageSettingPage(),
  const SampleWidgetMainPageProfilePage()
];

double animatedPositionedLEftValue(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return AppSizes.blockSizeHorizontal * 5.5;
    case 1:
      return AppSizes.blockSizeHorizontal * 22.5;
    case 2:
      return AppSizes.blockSizeHorizontal * 39.5;
    case 3:
      return AppSizes.blockSizeHorizontal * 56.5;
    case 4:
      return AppSizes.blockSizeHorizontal * 73.5;
    default:
      return 0;
  }
}

final List<Color> gradient = [
  Colors.yellow.withOpacity(0.8),
  Colors.yellow.withOpacity(0.5),
  Colors.transparent
];
