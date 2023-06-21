
import 'package:apple_shop2/profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'notification_page.dart';



class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 10,
        title: Text('Settings',style: TextStyle(color: Colors.black),),
        
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10,left: 10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => UserPage(),
                  ),
                );
                },
                // Profil sayfasına yönlendirme yapabilirsiniz.
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,left: 10),
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,left: 10),
            child: ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              onTap: () {
                // Dil ayarları sayfasına yönlendirme yapabilirsiniz.
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,bottom: 10,),
            child: ListTile(
              leading: Icon(Icons.security),
              title: Text('Safety'),
              onTap: () {
                // Güvenlik ayarları sayfasına yönlendirme yapabilirsiniz.
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,bottom: 10),
            child: ListTile(
              leading: Icon(Icons.help),
              title: Text('Help and Feedback'),
              onTap: () {
                // Yardım ve geri bildirim sayfasına yönlendirme yapabilirsiniz.
              },
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 10.0,bottom: 10),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                ),
                title: Text(
                  'Log Out',
                ),
                 onTap: () {
                  FirebaseAuth.instance.signOut();
                },
              ),
            ),
        ],
      ),
    );
  }
}
