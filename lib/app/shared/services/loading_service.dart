import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;

class LoadingService {
  var entry = LoadingService.loadingEntry;

  LoadingService();

  void showLoading() {
    asuka.addOverlay(entry);
  }

  void dismissLoading() {
    entry.remove();
  }

  static OverlayEntry get loadingEntry => OverlayEntry(
        builder: (context) {
          return Center(
            key: ValueKey('loading'),
            child: CircularProgressIndicator(),
          );
        },
      );
}
