import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
void main()=> runApp(MaterialApp(
  home: Home(),
));
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        backgroundColor: Colors.yellow,
        onPressed: () =>
        {
        },
      ),
      appBar: AppBar(
          centerTitle: true,
          shape: ContinuousRectangleBorder(),
          title: Text('hi jas'),
          backgroundColor: Colors.green),
      body: Container(
        color: Colors.grey,

      )
      // Center(
      //   // child: ElevatedButton.icon(
      //   //   onPressed: () {
      //   //     print('Click me');
      //   //   },
      //   //   icon: Icon(
      //   //       Icons.mail
      //   //   ),
      //   //   label: Text('mail me'),
      //   //   // style: ButtonStyle(
      //   //   //   backgroundColor: MaterialStateProperty.all(Colors.green),
      //   //   // ),
      //   //   // child: const Text(
      //   //   //   'Click',
      //   //   //   style: TextStyle(
      //   // ),
      // ),
      // onPressed: () {},
      // onLongPress: (){
    );

  }

    // insert image-  child: Image()
  }


