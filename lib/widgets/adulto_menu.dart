// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';

import 'dart:math' as math show pi;

import 'package:salinas_soccer_league/assets/fonts/ssl_icons.dart';

class AdultoMenu extends StatefulWidget {
  const AdultoMenu({Key? key}) : super(key: key);

  @override
  State<AdultoMenu> createState() => _AdultoMenuState();
}

class _AdultoMenuState extends State<AdultoMenu> {
  late List<CollapsibleItem> _items;
  late String _headline;
  AssetImage _avatarImg = AssetImage('lib/assets/images/ssl_logo.png');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Home',
        icon: SSL.ssl_home,
        onPressed: () => setState(() => _headline = 'Home'),
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Rol Juvenil',
        icon: SSL.rol_juvenil,
        onPressed: () => setState(() => _headline = 'DashBoard'),
      ),
      CollapsibleItem(
        text: 'Tabla Juvenil',
        icon: SSL.tabla_juvenil,
        onPressed: () => setState(() => _headline = 'Errors'),
      ),
      CollapsibleItem(
        text: 'Rol Adulto',
        icon: SSL.rol_adulto,
        onPressed: () => setState(() => _headline = 'Search'),
      ),
      CollapsibleItem(
        text: 'Tabla Adulto',
        icon: Icons.assessment,
        onPressed: () => setState(() => _headline = 'Notifications'),
      ),
    ];
  }

  PageController page = PageController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   children: [
    //     SideMenu(
    //       controller: page,
    //       style: SideMenuStyle(
    //         backgroundColor: Theme.of(context).primaryColor,
    //         iconSize: 40,
    //         openSideMenuWidth: 250,
    //         displayMode: SideMenuDisplayMode.auto,
    //         hoverColor: Theme.of(context).primaryColor.withOpacity(.5),
    //         selectedColor: Theme.of(context).primaryColor,
    //         selectedTitleTextStyle: TextStyle(color: Colors.white),
    //         selectedIconColor: Colors.white,
    //       ),
    //       title: Column(
    //         children: [
    //           Container(
    //             color: Colors.white,
    //             height: 150,
    //             width: 250,
    //             child: Image.asset('lib/assets/images/ssl_logo.png'),
    //           ),
    //           Divider(
    //             color: Colors.white,
    //             thickness: 2,
    //             indent: 10.0,
    //             endIndent: 8.0,
    //           ),
    //         ],
    //       ),
    //       footer: Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Text(
    //           'mohada',
    //           style: TextStyle(fontSize: 15),
    //         ),
    //       ),
    //       items: [
    //         SideMenuItem(
    //           priority: 0,
    //           title: 'Home',
    //           onTap: () {
    //             page.jumpToPage(0);
    //           },
    //           icon: Icon(SSL.ssl_home),
    //         ),
    //         SideMenuItem(
    //           priority: 1,
    //           title: 'Rol Juvenil',
    //           onTap: () {
    //             page.jumpToPage(1);
    //           },
    //           icon: Icon(SSL.rol_juvenil),
    //         ),
    //         SideMenuItem(
    //           priority: 2,
    //           title: 'Tabla Juvenil',
    //           onTap: () {
    //             page.jumpToPage(2);
    //           },
    //           icon: Icon(SSL.tabla_juvenil),
    //         ),
    //         SideMenuItem(
    //           priority: 3,
    //           title: 'Rol Adulto',
    //           onTap: () {
    //             page.jumpToPage(3);
    //           },
    //           icon: Icon(SSL.rol_adulto),
    //         ),
    //         SideMenuItem(
    //           priority: 4,
    //           title: 'Tabla Adulto',
    //           onTap: () {
    //             page.jumpToPage(4);
    //           },
    //           icon: Icon(SSL.tabla_adulto),
    //         ),
    //         SideMenuItem(
    //           priority: 6,
    //           title: 'Exit',
    //           onTap: () async {},
    //           icon: Icon(Icons.exit_to_app),
    //         ),
    //       ],
    //     ),
    //     Expanded(
    //       child: PageView(
    //         controller: page,
    //         children: [
    //           Container(
    //             color: Colors.white,
    //             child: Center(
    //               child: Text(
    //                 'Dashboard',
    //                 style: TextStyle(fontSize: 35),
    //               ),
    //             ),
    //           ),
    //           Container(
    //             color: Colors.white,
    //             child: Center(
    //               child: Text(
    //                 'Users',
    //                 style: TextStyle(fontSize: 35),
    //               ),
    //             ),
    //           ),
    //           Container(
    //             color: Colors.white,
    //             child: Center(
    //               child: Text(
    //                 'Files',
    //                 style: TextStyle(fontSize: 35),
    //               ),
    //             ),
    //           ),
    //           Container(
    //             color: Colors.white,
    //             child: Center(
    //               child: Text(
    //                 'Download',
    //                 style: TextStyle(fontSize: 35),
    //               ),
    //             ),
    //           ),
    //           Container(
    //             color: Colors.white,
    //             child: Center(
    //               child: Text(
    //                 'Settings',
    //                 style: TextStyle(fontSize: 35),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: page,
            style: SideMenuStyle(
              backgroundColor: Theme.of(context).primaryColor,
              openSideMenuWidth: 200,
              displayMode: SideMenuDisplayMode.open,
              hoverColor: Colors.transparent,
              selectedColor: Colors.black.withOpacity(.2),
              selectedTitleTextStyle: TextStyle(color: Colors.white),
              selectedIconColor: Colors.white,

              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              // backgroundColor: Colors.blueGrey[700]
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Rol Adulto',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: Icon(Icons.sports_soccer),
              ),
              SideMenuItem(
                priority: 1,
                title: 'Tabla Adulto',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: Icon(Icons.assessment),
              ),
              SideMenuItem(
                priority: 2,
                title: 'Resultados',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: Icon(Icons.file_copy_rounded),
              ),
              SideMenuItem(
                priority: 3,
                title: 'News',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: Icon(Icons.list),
              ),
              SideMenuItem(
                priority: 4,
                title: 'Teams',
                onTap: () {
                  page.jumpToPage(4);
                },
                icon: Icon(
                  Icons.group,
                ),
              )
            ],
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Rol Adulto',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Tabla Adulto',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Resultados',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'News',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Teams',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: MediaQuery.of(context).size.width,
      color: Colors.blueGrey[900],
      child: Center(
        child: Text(
          _headline,
          style: Theme.of(context).textTheme.headline1,
          overflow: TextOverflow.visible,
          softWrap: false,
        ),
      ),
    );
  }
}
