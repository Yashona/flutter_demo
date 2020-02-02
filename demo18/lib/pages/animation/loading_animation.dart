import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

class LoadingPage extends StatefulWidget {
  LoadingPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingPage> {
  bool _loading = false;

  ProgressDialog pr;
  double percentage = 0.0;
  
  @override
  Widget build(BuildContext context) {

    pr = new ProgressDialog(context, type: ProgressDialogType.Download);

    pr.style(
      message: 'Downloading file...',
      borderRadius: 10.0,
      backgroundColor: Colors.white,
      elevation: 10.0,
      insetAnimCurve: Curves.easeInOut,
      progress: 0.0,
      maxProgress: 100.0,
      progressTextStyle: TextStyle(color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
      messageTextStyle: TextStyle(color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("加载动画"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text('showLoading'),
            onPressed: (){
              
              pr.show();
              
              Future.delayed(Duration(seconds: 2)).then((onvalue) {
                percentage = percentage + 30.0;
                print(percentage);

                pr.update(
                  progress: percentage,
                  message: "稍等 2秒钟...",
                  progressWidget: Container(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator()
                  ),
                  maxProgress: 100.0,
                  progressTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400
                  ),
                  messageTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 19.0,
                    fontWeight: FontWeight.w600
                  ),
                );

                Future.delayed(Duration(seconds: 2)).then((value) {
                  percentage = percentage + 30.0;
                  pr.update(progress: percentage, message: "2秒钟后...");

                  print(percentage);

                  Future.delayed( Duration(seconds: 2) ).then((value) {
                    percentage = percentage + 30.0;
                    pr.update(progress: percentage, message: "加载完成 2秒钟...");

                    print(percentage);

                    Future.delayed(Duration(seconds: 2)).then((value) {
                      pr.hide().whenComplete(() {
                        print(pr.isShowing());
                      });
                      setState(() {
                        percentage = 0.0;
                      });
                      
                    });

                  });
                });
              });

              // Future.delayed(Duration(seconds: 10)).then((onValue) {

              //   print("PR status  ${pr.isShowing()}");

              //   if (pr.isShowing()){
              //     pr.hide().then((isHidden) {
              //       print(isHidden);
              //     });
              //   }
                
              //   print("PR status  ${pr.isShowing()}");
              // });
            

            },
          ),
        ),
      ),
    );
  }

}