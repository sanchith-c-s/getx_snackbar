import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Snackbar",
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Get.snackbar('Snackbar title', 'This will be Snackbar Message',
                snackPosition: SnackPosition.BOTTOM,
                colorText: Colors.white,
                backgroundColor: Colors.black,
                borderRadius: 30,
                margin: EdgeInsets.all(10),
                animationDuration: Duration(milliseconds: 3000),
                backgroundGradient: LinearGradient(colors: [Colors.red,Colors.green]),
                borderColor: Colors.purple,
                borderWidth: 4,
                boxShadows: [
                  BoxShadow(
                    color: Colors.yellow,
                    offset: Offset(30, 50),
                    spreadRadius: 20,
                    blurRadius: 8,
                  )
                ],
                isDismissible: true,
                dismissDirection:DismissDirection.up,
                forwardAnimationCurve: Curves.bounceInOut,
                duration: Duration(milliseconds: 8000),
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                shouldIconPulse: false,
                leftBarIndicatorColor: Colors.white,
                mainButton: TextButton(onPressed: (){

                },
                 child: Text('retry'),
                 ),
                 overlayBlur: 5,
                //  overlayColor: Colors.grey,
                  padding: EdgeInsets.all(30),
                  showProgressIndicator: true,
                  progressIndicatorBackgroundColor: Colors.deepOrange,
                  progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  reverseAnimationCurve: Curves.bounceInOut,
                  snackbarStatus: (val){
                    print(val);
                  },
                  // userInputForm: Form(
                  //   child:Row(
                  //     children: [
                  //       Expanded(child: TextField()
                  //       )
                  //     ],
                  //   ) 
                  
                  // )
                );
                
              }, 
              child: Text('Show Snackbar'))
            ],
          ),
        ),
      ),
    );
  }
}
