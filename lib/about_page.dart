import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(   

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 10,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey[900]),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'ABOUT',
          style: TextStyle(color: Colors.black, fontFamily: 'Oswald'),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/apple6.png"),
            fit: BoxFit.contain,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Term of Use",
                  style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "Ownership of app; Agreement to Terms of Use",
                  style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "These Terms and Conditions of Use (the Terms of Use) apply to the Apple web site located at www.apple.com, and all associated sites linked to www.apple.com by Apple, its subsidiaries and affiliates, including Apple sites around the world (collectively, the Site). The Site is the property of Apple Inc. (Apple) and its licensors. BY USING THE SITE, YOU AGREE TO THESE TERMS OF USE; IF YOU DO NOT AGREE, DO NOT USE THE SITEApple reserves the right, at its sole discretion, to change, modify, add or remove portions of these Terms of Use, at any time. It is your responsibility to check these Terms of Use periodically for changes. Your continued use of the Site following the posting of changes will mean that you accept and agree to the changes. As long as you comply with these Terms of Use, Apple grants you a personal, non-exclusive, non-transferable, limited privilege to enter and use the Site. ",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(height: 10),
                Text(
                  "Content",
                  style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "All text, graphics, user interfaces, visual interfaces, photographs, trademarks, logos, sounds, music, artwork and computer code (collectively, Content), including but not limited to the design, structure, selection, coordination, expression, look and feel and arrangement of such Content, contained on the Site is owned, controlled or licensed by or to Apple, and is protected by trade dress, copyright, patent and trademark laws, and various other intellectual property rights and unfair competition laws.",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(height: 20),
                Text(
                  "Feedback and Information",
                  style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "Any feedback you provide at this site shall be deemed to be non-confidential. Apple shall be free to use such information on an unrestricted basis.The information contained in this web site is subject to change without notice.Copyright © 1997-2009 Apple Inc. All rights reserved.Apple Inc., One Apple Park Way, Cupertino, CA 95014, USA.Updated by The Apple Legal Team on Nov. 20, 2009",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
