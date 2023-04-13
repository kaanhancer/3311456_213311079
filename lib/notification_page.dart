import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/apple77.png"))),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.grey[200]),
              onPressed: () => Navigator.of(context).pop(),
            ),
              title: Text(
                "Notification and Theme Settings",
                style: TextStyle(color: Colors.white,fontFamily:"Oswald"),
              ),
              backgroundColor: Colors.transparent,
              elevation: 20,
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Notification Settings',
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Oswald',
                        fontWeight: FontWeight.bold),
                  ),
                  SwitchListTile(
                    dense: true,
                    activeColor: Colors.grey[200],
                    contentPadding: EdgeInsets.all(0),
                    value: false,
                    title: Text('Stop all',style: TextStyle(color: Colors.white,fontSize: 18)),
                    onChanged: null,
                  ),
                  SwitchListTile(
                    dense: true,
                    activeColor: Colors.blue[400],
                    contentPadding: EdgeInsets.all(0),
                    value: true,
                    title: Text('Reminder emails',style: TextStyle(color: Colors.white,fontSize: 18)),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    dense: true,
                    activeColor: Colors.blue[400],
                    contentPadding: EdgeInsets.all(0),
                    value: true,
                    title: Text('I want to be informed about the campaigns',style: TextStyle(color: Colors.white,fontSize: 17)),
                    onChanged: (val) {},
                  ),
                  SizedBox(
                    height: 330,
                  ),
                  Text(
                    "Theme And Color Settings",
                    style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "Oswald"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SwitchListTile(
                    dense: true,
                    activeColor: Colors.white,
                    contentPadding: EdgeInsets.all(0),
                    value: false,
                    title: Text('Light mode',style: TextStyle(color: Colors.white,fontSize: 18)),
                    onChanged: null,
                  ),
                  SwitchListTile(
                    dense: true,
                    activeColor: Colors.blue[400],
                    contentPadding: EdgeInsets.all(0),
                    value: true,
                    title: Text('Dark mode',style: TextStyle(color: Colors.white,fontSize: 18)),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    dense: true,
                    activeColor: Colors.blue[400],
                    contentPadding: EdgeInsets.all(0),
                    value: true,
                    title: Text('Lock screen theme',style: TextStyle(color: Colors.white,fontSize: 18)),
                    onChanged: (val) {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
