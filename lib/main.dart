import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(title: Text("Dialog"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text("Show Dialog",style: TextStyle(fontSize: 25),),
                  onPressed: (){
                    //create default dialog
                  //  Get.defaultDialog();
                    //to create customize dialogue
                    Get.defaultDialog(
                      title: "Dialogue Title",
                      titleStyle: TextStyle(fontSize: 25),
                      middleText: "This is middle text",
                      middleTextStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.red,
                      //: true,
                      radius: 80,

                      //to customize the middle text
                        //content will override middle text
                        content: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: CircularProgressIndicator(),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(child: Text("Data Loading"))
                        ],
                      ),

                      //to add cancel text
                      textCancel: 'Cancel',
                      cancelTextColor: Colors.black,
                      //to add confirm button
                      textConfirm: "Confirm",
                      confirmTextColor: Colors.white,
                      //after tapping oncancel button
                      onCancel: (){},
                        //after tapping onConfirm button
                      onConfirm: (){},
                      // color for default cancel and confirm button
                      buttonColor: Colors.green,

                      //customize the default cancel and confirm
                      //override the default cancel and confirm
                      cancel: Text("Cancel",style: TextStyle(color: Colors.white),),
                      confirm: Text("Confirm",style: TextStyle(color: Colors.white),),
                      actions: [
                        RaisedButton(
                          child:Text("Action-1"),
                            onPressed: (){
                          Get.back();
                        }),
                        RaisedButton(
                            child:Text("Action-2"),
                            onPressed: (){}
                            ),
                      ],
                      //by default when you click on screen except dialog box
                      //it closes the box
                      // but if you add barrierdismmisble:false
                      // then it wont happen

                      barrierDismissible:false,

                    );

                  }),

            ],
          ),
        ),
      ),
    );
  }
}
