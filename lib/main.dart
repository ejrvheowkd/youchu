// ignore: unused_import
import "package:firebase_core/firebase_core.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import "package:youchu_/profile.dart" as profile;
import "package:youchu_/home.dart" as home;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "YouChu",
      home: YouChu(),
    );
  }
}

class YouChu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100, left: 0),
              child: Image.asset('assets/Logo.jpg'),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 0),
              child: Image.asset('assets/chu.jpg'),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 30),
              alignment: Alignment.bottomLeft,
              child: Text(
                "이메일",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 28, top: 10, right: 28),
              height: 50,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "이메일을 입력하세요.",
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 30),
              alignment: Alignment.centerLeft,
              child: Text("비밀번호",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 28, right: 28),
              height: 50,
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "비밀번호를 입력하세요.",
              )),
            ),
            Container(
              width: 350,
              height: 50,
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => home.WidgetDemo()));
                  },
                  child: Text("로그인",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  color: Colors.red),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: FlatButton(
                  onPressed: () {},
                  child: Text("다른계정으로 로그인"),
                  color: Colors.white,
                )),
            Container(
              child: Image.asset('assets/Log1.jpg'),
            ),
            Container(
                margin: EdgeInsets.only(left: 145, top: 10),
                child: Row(children: <Widget>[
                  Container(
                    child: Text("페이스북"),
                  ),
                  SizedBox(width: 30),
                  Container(
                    child: Text("구글"),
                  )
                ])),
            Container(
                margin: EdgeInsets.only(top: 10), child: Text("계정이 없으신가요?")),
            Container(
                margin: EdgeInsets.only(bottom: 40),
                child: FlatButton(
                  child: Text("회원가입하기"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => profile.WidgetDemo()),
                    );
                  },
                  color: Colors.white,
                ))
          ]),
        ));
  }
}
