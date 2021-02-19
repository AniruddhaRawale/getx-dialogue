/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text(
                "This is HomePage",
                style: TextStyle(fontSize: 40),
              ),
              RaisedButton(
                  child: Text(
                    "Next Screen",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Get.back();
                  }),
              RaisedButton(
                  child: Text(
                    "Back To Main",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Get.back();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
*/


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("This Is Home Screen",style: TextStyle(
              fontSize: 30, color: Colors.pink
            ),),
            //to get arguments from the main.dart
          /*  Text("${Get.arguments}",style: TextStyle(
                fontSize: 30, color: Colors.green
            ),),*/
            RaisedButton(
                child: Text("Next Screen",style: TextStyle(fontSize: 30),),
                onPressed: (){},
              color: Colors.blue,
            ),
            RaisedButton(
              child: Text("Back To Screen",style: TextStyle(fontSize: 30),),
              onPressed: (){
                ///to get back to previous screen
               // Get.back();

                //send data to previous screen must use result as name
                Get.back(result: "This is From Home Screen");
              },
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
