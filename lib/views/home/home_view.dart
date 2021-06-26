library home_view;

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:csgorivals/core/services/messenger_service.dart';
import 'package:csgorivals/core/services/navigator_service.dart';
import 'package:csgorivals/views/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:csgorivals/core/locator.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
part 'home_android.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, viewModel, child) => _HomeAndroid(viewModel),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
