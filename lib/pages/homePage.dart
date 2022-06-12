import 'package:bar_app/pages/favouritePage.dart';
import 'package:bar_app/pages/notification.dart';
import 'package:bar_app/pages/updatePage.dart';
import 'package:bar_app/pages/workPage.dart';
import 'package:flutter/material.dart';

import 'UserPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue.shade700,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }


  buildHeader(BuildContext context) {
    return Material(
      color: Colors.blue.shade700,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context){
                return const UserPage();
              }));
        },
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
         child: Column(
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/logo4.png'),
            ),
            SizedBox(height: 12,),
            Text("Wave", style: TextStyle(fontSize: 18, color: Colors.white),),
            Text("wave782.com", style: TextStyle(fontSize: 18, color: Colors.white),)
          ],
        ),
      ),
    ),
    );
  }

  buildMenuItems(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 8,
      children: [
        ListTile(
          iconColor: Colors.white,
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18),),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context){
                  return const HomePage();
                }));
          },
        ),
        const Divider(color: Colors.white54),
        ListTile(
          iconColor: Colors.white,
          leading: const Icon(Icons.star),
          title: const Text('Favourite',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18),),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context)  {
                  return const FavouritePage();
                }));
          },
        ),
        const Divider(color: Colors.white54),
        ListTile(
          iconColor: Colors.white,
          leading: const Icon(Icons.work_outline),
          title: const Text('Work',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18),),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context)  {
                  return const WorkPage();
                }));
          },
        ),
        const Divider(color: Colors.white54,),
        ListTile(
          iconColor: Colors.white,
          leading: const Icon(Icons.update_outlined),
          title: const Text('Update',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18),),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context)  {
                  return const Update();
                }));
          },
        ),
        const Divider(color: Colors.white54,),
        ListTile(
          iconColor: Colors.white,
          leading: const Icon(Icons.notifications_active),
          title: const Text('Notification',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18),),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context)  {
                  return const Notifications();
                }));
          },
        )
      ],
      )
    );
  }
}
