// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:nearby/theme/colors.dart';
/*import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';*/


// Press the Navigation Drawer button to the left of AppBar to show
// a simple Drawer with two items.
class NavDrawer extends StatelessWidget {
/*  const NavDrawerDemo({Key key}) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            /*title: const Text('Drawer Demo'),*/
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                  ),
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ],
            ),
          ),
    );
  }

}

