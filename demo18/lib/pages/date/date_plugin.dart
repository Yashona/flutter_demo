import 'package:flutter/material.dart';

import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart';

class DatePlugin extends StatefulWidget {
  @override
  _DatePluginState createState() => _DatePluginState();
}

class _DatePluginState extends State<DatePlugin> {

  var _nowDate = DateTime.now();
  var _nowDateOther = DateTime.now();

  @override
  void initState() { 
    super.initState();
    
    print(_nowDate);
  }

  _showDatePicker(){
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse('1980-01-01'), //注意格式，必须为 yyyy-mm-dd
      maxDateTime: DateTime.parse('2100-12-30'), //注意格式，必须为 yyyy-mm-dd
      initialDateTime: this._nowDate,
      // dateFormat: 'yyyy-MMMM-dd', //设置日期显示的内容格式 
      dateFormat: 'yyyy年M月d日  EEE,H时:m分',
      pickerMode: DateTimePickerMode.datetime, // 显示时间选择器时加上此行，只显示日期不加
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("界面关闭"),
      onCancel: () => print('点击了取消按钮'),
      // onChange: (dateTime, List<int> index) {  //监听改变时调用
      //   setState(() {
      //     this._nowDate = dateTime;
      //   });
      // },
      onConfirm: (dateTime, List<int> index) { //点击确定时调用
        print(dateTime);
        setState(() {
          this._nowDate = dateTime;
        });
      },
    );
  }

  _showDateOtherPicker(){
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse('1980-01-01'), //注意格式，必须为 yyyy-mm-dd
      maxDateTime: DateTime.parse('2100-12-30'), //注意格式，必须为 yyyy-mm-dd
      initialDateTime: this._nowDateOther,
      dateFormat: 'yyyy-MMMM-dd', //设置日期显示的内容格式 
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("界面关闭"),
      onCancel: () => print('点击了取消按钮'),
      // onChange: (dateTime, List<int> index) {  //监听改变时调用
      //   setState(() {
      //     this._nowDate = dateTime;
      //   });
      // },
      onConfirm: (dateTime, List<int> index) { //点击确定时调用
        print(dateTime);
        setState(() {
          this._nowDateOther = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期插件 demo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            InkWell(
              onTap: this._showDatePicker,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${formatDate(this._nowDate, [yyyy, '年', mm, '月', dd, '日', 'HH', ':', 'nn'])}',
                    style: TextStyle(
                      fontSize: 18.0
                    ),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            SizedBox(height: 50.0,),
            InkWell(
              onTap: this._showDateOtherPicker,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${formatDate(this._nowDateOther, [yyyy, '年', mm, '月', dd, '日'])}',
                    style: TextStyle(
                      fontSize: 18.0
                    ),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
              
          ],
        ),
      )
    );
  }
}