import 'package:flutter/material.dart';

class ExpansionPanelDemoList extends StatefulWidget {
  @override
  _ExpansionPanelDemoListState createState() => _ExpansionPanelDemoListState();
}

class _ExpansionPanelDemoListState extends State<ExpansionPanelDemoList> {
  List<int> mList;
  List<ExpandStateBean> expandStateList;

  _ExpansionPanelDemoListState(){
    mList = new List();
    expandStateList = new List();

    for(int i=0;i<10;i++){
      mList.add(i);
      expandStateList.add(ExpandStateBean(i,false));
    }
  }

  _setCurrentIndex(int index,isExpand){
    setState(() {
      expandStateList.forEach((item){
        if(item.index == index){
          item.isOpen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion panel list'),
      ),
      body: SingleChildScrollView(  //必须使用这个才能用下面的 ExpansionPanelList
        child: ExpansionPanelList(
          expansionCallback: (index, bol){
            _setCurrentIndex(index,bol);
          },
          children: mList.map((index){
            return ExpansionPanel(
              headerBuilder: (context, isExpanded){
                return ListTile(
                  title: Text('This is No.$index'),
                );
              },
              body:ListTile(
                title: Text('expansion No.$index'),
              ),
              isExpanded: expandStateList[index].isOpen
            );
          }).toList()
        ),
      ),
    );
  }
}

class ExpandStateBean {
  var isOpen;
  var index;
  ExpandStateBean(this.index,this.isOpen);
}