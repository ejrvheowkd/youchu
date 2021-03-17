import "package:flutter/material.dart";

void main() => runApp(new WidgetDemo());

class WidgetDemo extends StatefulWidget {
  @override
  _WidgetDemo createState() => _WidgetDemo();
}

class _WidgetDemo extends State<WidgetDemo> {
  var man_color = Colors.white;
  var woman_color = Colors.white;

  @override
  Widget build(BuildContext) {
    return MaterialApp(
        title: "Demo",
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Center(
                    child: Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text("회원가입",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ))),
              Container(
                margin: EdgeInsets.only(left: 30, top: 25),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "이름",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '이름을 입력하세요.',
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 30, top: 5),
                  alignment: Alignment.bottomLeft,
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Text(
                        "나이",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "성별",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ))
                  ]) /**/
                  ),
              Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '나이',
                          ),
                        )),
                        SizedBox(width: 45),
                        Expanded(
                          child: Row(children: <Widget>[
                            Expanded(
                              child: RaisedButton(
                                padding: EdgeInsets.all(20),
                                onPressed: () {
                                  if (man_color == Colors.white) {
                                    man_color = Colors.red;
                                    woman_color = Colors.white;
                                  }
                                },
                                child: Text("남자"),
                                color: man_color,
                                textColor: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: RaisedButton(
                                padding: EdgeInsets.all(20),
                                onPressed: () {
                                  if (woman_color == Colors.white) {
                                    woman_color = Colors.red;
                                    man_color = Colors.white;
                                  }
                                },
                                child: Text("여자"),
                                color: woman_color,
                                textColor: Colors.black,
                              ),
                            )
                          ]),
                        )
                      ])),
              Container(
                child: Text(
                  '닉네임',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(top: 10, left: 30),
              ),
              Container(
                  margin: EdgeInsets.only(left: 30, top: 5, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '닉네임을 입력하세요.',
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(top: 10, left: 30),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "이메일",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 30, top: 5, right: 30),
                  child: TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '이메일을 입력하세요',
                  ))),
              Container(
                margin: EdgeInsets.only(top: 5, left: 30),
                alignment: Alignment.bottomLeft,
                child: Text(
                  '비밀번호',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 5, left: 30, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: '비밀번호를 입력하세요'),
                  )),
              Container(
                margin: EdgeInsets.only(top: 5, left: 30),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "비밀번호 확인",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '비밀번호를 다시한번 입력하세요.'),
                  )),
              Container(
                  width: 440,
                  margin:
                      EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 30),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("회원가입하기"),
                    color: Colors.red,
                    textColor: Colors.white,
                  ))
            ])))));
  }
}
