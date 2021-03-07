// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:series_downloader/ui/home.dart';

void main() => runApp(MyApp());

const russianViolet = Color(0XFF605f5e);
const blackish = Color(0XFF252525);
const mangoTango = Color(0XFFf5853f);
const lilac = Color(0XFFb6a6ca);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // brightness: Brightness.dark,
        primaryColor: Colors.white,
        accentColor: mangoTango,
      ),
      title: 'Series Downloader',
      home: HomePage(),
    );
  }
}
