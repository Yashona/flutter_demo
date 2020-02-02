import 'package:flutter/material.dart';

import 'package:date_format/date_format.dart';


class DatePage extends StatefulWidget {
  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {

  DateTime time = DateTime.now();

  var _nowDate = DateTime.now();

  var _nowTime;

  @override
  void initState() { 
    super.initState();

    // _nowTime = time.hour.toString() +':'+ time.minute.toString() +':'+ time.second.toString();
    
    _nowTime = TimeOfDay(hour: time.hour, minute: time.minute);

    // print(_nowTime);
    
    // print(_nowDate);  //打印出结果  2020-02-01 15:15:19.445437
    // print(_nowDate.millisecondsSinceEpoch);  //把时间转换成时间戳  1580541319445
    // print(DateTime.fromMillisecondsSinceEpoch(1580541319445));  //把时间戳转换成时间   2020-02-01 15:15:19.445
    
    //先安装 date_format 第三方日期格式化插件
    //再本文件中引入  import 'package:date_format/date_format.dart';
    //根据需要的格式进行设置调用；
    // print(formatDate(_nowDate, [yyyy, '-', mm, '-', dd]));   //2020-02-01
    // print(formatDate(_nowDate, [yyyy, '年', mm, '月', dd, '日']));   //2020年02月01日

  }

  //方式一：将选择的时间赋值给 _nowDate ,使用 .then() 的写法
  /*
  _showDatePicker(){

    showDatePicker(
      context: context,
      initialDate: this._nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100)
    ).then((result){
      print(result);
      setState(() {
        if(result != null){
          _nowDate = result;
        }
      });
    });

  }
  */

  //方式二：将选择的时间赋值给 _nowDate ，使用 async 和 await 的异步 写法
  _showDatePicker() async {

    var selectDate = await showDatePicker(
      context: context,
      initialDate: this._nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100)
    );

    if(selectDate != null){
      setState(() {
        _nowDate = selectDate;
      });
    }

  }

  _showTimePicker() async {  //此处获取时间的方式与上面获取日期的方式一样，同样可使用两种方式获取

    var selectTime = await showTimePicker(    //返回的结果为 TimeOfDay(06:20)， 转换方式为  _nowTime.format(context) 
      context: context,
      initialTime: this._nowTime,
    );

    // print('选择的时间为： ${selectTime}'); //打印出来的结果为 TimeOfDay(06:20)

    if(selectTime != null){
      setState(() {
        this._nowTime = selectTime;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期 demo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _showDatePicker,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '${formatDate(this._nowDate, [yyyy, '年', mm, '月', dd, '日'])}',
                        style: TextStyle(
                          fontSize: 18.0
                        ),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                InkWell(
                  onTap: _showTimePicker,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '${this._nowTime.format(context)}',  //注意格式
                        style: TextStyle(
                          fontSize: 18.0
                        ),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ]
            ),
          ],
        ),
      )
    );
  }
}