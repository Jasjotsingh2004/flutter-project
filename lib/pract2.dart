import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                body: Column(

                  children: [

                    Container(
                      height: 90,

                      child:  Padding(
                          padding:  EdgeInsets.fromLTRB(15, 16, 15, 15),
                          child: Material(
                            elevation: 5,
                            child: CupertinoTextField(
                              prefix:  const Padding(
                                padding: EdgeInsets.all(8.0),
                                 child: Icon(Icons.search),
                              ),
                              suffix: Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: (){
                                    showCustomDialogue(context);
                                  },
                                  child: const CircleAvatar(
                                     backgroundImage: AssetImage('assets/download (1).jpg'),
                                  ),
                                ),
                              ),
                              prefixMode: OverlayVisibilityMode.notEditing,
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.center,
                              placeholder: 'Flash',
                            ),
                          )),
                    ),
                    ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                    children: <Widget>[
                       ListTile(
                    leading: GestureDetector(
                      onTap: (){showCustomDialogue(context);} ,
                      child: const CircleAvatar(

                      backgroundImage: AssetImage('assets/myproj.jpg'),
                      radius: 25.0,
                      ),
                    ),
                    title: Text('Johnn Andrinson'),
                    ),
                    const ListTile(
                    leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images (2).jpg'),
                    radius: 25.0,
                    ),
                    title: Text('Mahesh'),
            ),
                          const ListTile(
                               leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/download3.jpg'),
                    radius: 25.0,
              ),
                                    title: Text('natasha'),
            ),
            const ListTile(
              leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/jas.jpg'),
                    radius: 25.0,
              ),
              title: Text('Fernny'),
            ),
            const ListTile(
              leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/istockphoto-825778252-170667a.jpg'),
                    radius: 25.0,
              ),
              title: Text('Larry'),
            ),
          ],
        ),
                  ],
                ),

    );
  }
}

void showCustomDialogue(BuildContext context) {
  showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
  transitionDuration: const Duration(milliseconds: 400),
  pageBuilder: (_, __, ___) {
  return Center(
  child: ClipRRect(
   borderRadius: BorderRadius.circular(40),
     child: BackdropFilter(
  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
             child: Container(
                  child: Container(
                    child: DialogueInfo()
     ),


                           height: MediaQuery.of(context).size.height * 0.55,
                           width: MediaQuery.of(context).size.width * 0.85,
                           decoration: BoxDecoration(
                             color: Colors.black54,
                                 gradient: LinearGradient(colors: [
                                   Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0.9),
                                  ], begin: AlignmentDirectional.topStart, end: AlignmentDirectional.bottomEnd),
                               ),
                                ),
                    ),
                       ),
  );

  }
  );
}

Widget DialogueInfo(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/images (2).jpg'),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'William smith',
                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 20, decoration: TextDecoration.none),
                ),
                Text(
                  'will.gmail.com',
                  style: TextStyle(fontWeight: FontWeight.w100, color: Colors.white, fontSize: 15, decoration: TextDecoration.none),
                ),
              ],
            )
          ],
        ),
      ),
      const Divider(
        height: 3,
        color: Colors.black,
        thickness: 4.0,
        indent: 20,
        endIndent: 20,
      ),
      const SizedBox(
        height: 10,
      ),
      RowOptions(CupertinoIcons.smiley, 'Status'),
      const SizedBox(
        height: 10,
      ),
      RowOptions(CupertinoIcons.bell_slash, 'Snooze Notification'),
      const SizedBox(
        height: 10,
      ),
      DividerLine(),
      const SizedBox(
        height: 10,
      ),
      RowOptions(CupertinoIcons.envelope_open, 'Invitation'),
      const SizedBox(
        height: 10,
      ),
      RowOptions(CupertinoIcons.archivebox, 'Archived'),

      DividerLine(),
      const SizedBox(
        height: 20,

      ),
      RowOptions(CupertinoIcons.settings, 'Settings'),
      const SizedBox(
        height: 10,
      ),
      RowOptions(CupertinoIcons.question, 'Help & Feedback'),
      const SizedBox(
        height: 20,
      ),
      DividerLine(),
      const SizedBox(
        height: 20,
      ),
      const Center(
        child: Text('Privacy Policy • Terms of Service', style: const TextStyle(fontWeight: FontWeight.w100, color: Colors.white, fontSize: 10, decoration: TextDecoration.none)),
      )
    ],
  );
}

Widget DividerLine() {
  return const Divider(
    height: 3,
    color: Colors.black,
    thickness: 2.0,
    indent: 20,
    endIndent: 20,
  );
}

Widget RowOptions(IconData logo, String settingsName) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
    child: Row(
      children: [
        Icon(
          logo,
          color: Colors.white,
          size: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          settingsName,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15, decoration: TextDecoration.none),
        )
      ],
    ),
  );
}
