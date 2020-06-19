import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';


class PositionTable2 extends StatefulWidget {
  PositionTable2({Key key}) : super(key: key);
 

  @override
  _PositionTable2State createState() => _PositionTable2State();
}

class _PositionTable2State extends State<PositionTable2> {
  static const int sortName = 0;
  
  bool isAscending = true;
  int sortType = sortName;

  @override
  void initState() {
    user.initData(20);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return   _getBodyWidget();
  }

  Widget _getBodyWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),),
        child: HorizontalDataTable(
          leftHandSideColumnWidth: 100,
          rightHandSideColumnWidth: 400,
          isFixedHeader: true,
          headerWidgets: _getTitleWidget(),
          leftSideItemBuilder: _generateFirstColumnRow,
          rightSideItemBuilder: _generateRightHandSideColumnRow,
          itemCount: user.userInfo.length,
          rowSeparatorWidget: const Divider(
            color: Colors.black,
            height: 2.0,
            thickness: 1.0,
          ),
          leftHandSideColBackgroundColor: Color(0xFFFFFFFF),
          rightHandSideColBackgroundColor: Color(0xFFFFFFFF),
        ),
        height: MediaQuery.of(context).size.height/2,
        width: 150,
      ),
    );
  }

//AQUI GENERA LOS TITULOS DE CADA COLUMNA
  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('Equipos',100),
      _getTitleItemWidget('JJ', 50),
      _getTitleItemWidget('JG', 50),
      _getTitleItemWidget('JE', 50),
      _getTitleItemWidget('JP', 50),
      _getTitleItemWidget('GF', 50),
      _getTitleItemWidget('GC', 50),
      _getTitleItemWidget('Dif', 50),
      _getTitleItemWidget('PTS', 50),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      child: Text(label, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
      width: width,
      height: 56,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      child: Text(user.userInfo[index].team, style: TextStyle(color: Colors.black)),
      width: 100,
      height: 52,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          child: Text("1."  '${user.userInfo[index].jj}',style: TextStyle(color: Colors.black)),
          width: 50,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text('${user.userInfo[index].jg}',style: TextStyle(color: Colors.black)),
          width: 50,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text('${user.userInfo[index].je}',style: TextStyle(color: Colors.black)),
          width: 50,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text('${user.userInfo[index].jp}',style: TextStyle(color: Colors.black)),
          width: 50,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text('${user.userInfo[index].gf}',style: TextStyle(color: Colors.black)),
          width: 50,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text('${user.userInfo[index].gc}',style: TextStyle(color: Colors.black)),
          width: 50,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text('${user.userInfo[index].dif}',style: TextStyle(color: Colors.black)),
          width: 50,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text('${user.userInfo[index].pts}',style: TextStyle(color: Colors.black)),
          width: 50,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }
}

User user = User();

class User {
  List<UserInfo> _userInfo = List<UserInfo>();

  void initData(int size) {
    for (int i = 0; i < size; i++) {
      _userInfo.add(UserInfo(
          "User_$i", 4, 3, 29, 25,10,15,20,25));
    }
  }

  List<UserInfo> get userInfo => _userInfo;

  set userInfo(List<UserInfo> value) {
    _userInfo = value;
  }
}

class UserInfo {
  String team;
  int jj;
  int jg;
  int je;
  int jp;
  int gf;
  int gc;
  int dif;
  int pts;


  UserInfo(this.team, this.jj, this.jg, this.je,
      this.jp,this.gf,this.gc,this.dif,this.pts);
}