import 'package:biblioteca_widgets/app/domain/models/slider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';

class OnboardingController extends SimpleNotifier {
  final PageController pageViewController = PageController();
  //estado fin slider
  bool endReached = false;

  void onPageChanged() {
    //0 si no se recupera la pagina del view
    final page = pageViewController.page ?? 0;
    if (page >= (sliders.length - 1.5)) {
      endReached = true;
    } else {
      endReached = false;
    }
    notify();
  }
}
