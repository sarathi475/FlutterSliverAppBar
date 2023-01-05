import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverAppBar(
            title: Text("Flutter Sliver App Bar"),
            leading: Icon(Icons.menu),
            // floating: true,
            pinned: true,
            // actions: [
            //   TextButton(
            //       onPressed: () {
            //         print("notification");
            //       },
            //       child: Icon(
            //         Icons.notifications,
            //         color: Colors.white,
            //       ))
            // ],
            expandedHeight: 250,
            flexibleSpace: LayoutBuilder(builder: (context, cons) {
              var top = cons.biggest.height;
              return FlexibleSpaceBar(
                title: AnimatedOpacity(
                  duration: Duration(microseconds: 20),
                  opacity: top <= 130 ? 1.0 : 0.0,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Transform.translate(
                          offset: Offset(0, 10),
                          child: Container(
                            // decoration: BoxDecoration(color: Colors.red),
                            padding: EdgeInsets.only(right: 10, top: 0),
                            // margin: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                    "https://secure.gravatar.com/avatar/22b022dfaa1fe2c18da3c83798ff9ad0?s=800&d=identicon",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // collapseMode: CollapseMode.pin,
                background: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 30),
                  // decoration: BoxDecoration(color: Colors.red),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://secure.gravatar.com/avatar/22b022dfaa1fe2c18da3c83798ff9ad0?s=800&d=identicon",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Icon(Icons.person, color: Colors.white),
                      Text("Parthasarthy",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 2)),
                      SizedBox(
                        height: 3,
                      ),
                      Text("@sarathi475",
                          style: TextStyle(color: Colors.white)),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              );
            }),

            // collapsedHeight: 10,
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: const Text(
                      "Welcome to flutter learning",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Flutter Tabbar"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "In this section, we are going to learn how the tab bar works in Flutter. The tabs are mainly used for mobile navigation. The styling of tabs is different for different operating systems. For example, it is placed at the top of the screen in android devices while it is placed at the bottom in iOS devices. Working with tabs is a common pattern in Android and iOS apps that follow the Material Design guidelines. Flutter provides a convenient way to create a tab layout. To add tabs to the app, we need to create a TabBar and TabBarView and attach them with the TabController. The controller will sync both so that we can have the behavior which we need. Let us see step by step to create a tab bar in Flutter application."),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Flutter Drawer"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "The mobile apps that use Material Design have two primary options for navigation. These navigations are Tabs and Drawers. A drawer is an alternative option for tabs because sometimes the mobile apps do not have sufficient space to support tabs.A drawer is an invisible side screen. It is a sliding left menu that generally contains important links in the application and occupies half of the screen when displayed. Let us see how the drawer works in a Flutter. Flutter uses a drawer widget to create a sliding left menu layout with a Material Design widget. The following steps are required to use a drawer in the app. Create a Flutter Project."),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Flutter Lists"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Lists are the most popular elements of every web or mobile application. They are made up of multiple rows of items, which include text, buttons, toggles, icons, thumbnails, and many more. We can use it for displaying various information such as menus, tabs, or to break the monotony of pure text files. In this section, we are going to learn how we can work with Lists in the Flutter. Flutter allows you to work with Lists in different ways."),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
