import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<Map<String, dynamic>> _userList = [
    {
      
      'title': 'Name Surname',
      'subtitle': 'Kaan Hançer',
      
    },
    {
      'title': 'Email',
      'subtitle': 'kaanhancer@gmail.com',
    },
    {
      'title': 'Number Phone',
      'subtitle': '0555 555 55 55',
    },
    {
      'title': 'User Name',
      'subtitle': 'apple',
    },
    
    {
      'title': 'Password',
      'subtitle': '*******',
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 10,
        title: Text('User İnformation',style: TextStyle(color: Colors.black),),
      ),
      body: ListView.builder(
        itemCount: _userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_userList[index]['title']),
            subtitle: Text(_userList[index]['subtitle']),
          );
        },
      ),
    );
  }
}
