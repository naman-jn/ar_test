import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project/3dfour.dart';
import 'package:project/arscreen1.dart';
import 'package:url_launcher/url_launcher.dart';

class ObjectDetail2 extends StatelessWidget {
  const ObjectDetail2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Object(),
    );
  }
}

class Object extends StatelessWidget {
  const Object({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.all(15),
                height: 280,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.grey[300].withOpacity(1.0), //color of shadow
                      spreadRadius: 1, //spread radius
                      blurRadius: 1, // blur radius
                      offset: Offset(0, 1), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Image.asset('images/alienimg.png')),
            SizedBox(
              height: 11,
            ),
            Text(
              'Description',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'circle'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: 300,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400].withOpacity(0.2), //color of shadow
                    spreadRadius: 1, //spread radius
                    blurRadius: 1, // blur radius
                    offset: Offset(0, 1), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: SingleChildScrollView(
                child: Text(
                  "An alien species is a species introduced outside its normal distribution. According to experts, alien species become ‘invasive’ when they are introduced deliberately or accidentally outside their natural areas, where they out-compete the native species and upset the ecological balance.The most common characteristics of invasive species are rapid reproduction and growth, high dispersal ability, ability to survive on various food types, and in a wide range of environmental conditions and the ability to adapt physiologically to new conditions, called phenotypic plasticity.The alien invasive species are non-native to an ecosystem. They may cause economic or environmental harm or even adversely affect human health.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'circle',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(15),
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400]
                                .withOpacity(0.2), //color of shadow
                            spreadRadius: 1, //spread radius
                            blurRadius: 1, // blur radius
                            offset: Offset(0, 1), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ],
                      ),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'circle',
                            ),
                            text: "Wiki "),
                        TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'circle',
                              color: Colors.blue,
                            ),
                            text: "Click here",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                var url =
                                    "https://byjus.com/free-ias-prep/alien-invasive-species-upsc-notes/#:~:text=%20Some%20commonly%20found%20alien%20species%3A%20%201,for%20destroying%20the%20fish%20population%20in...%20More%20";
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }),
                      ]))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      padding: EdgeInsets.all(15),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400]
                                .withOpacity(0.2), //color of shadow
                            spreadRadius: 1, //spread radius
                            blurRadius: 1, // blur radius
                            offset: Offset(0, 1), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ],
                      ),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'circle',
                            ),
                            text: "YouTube"),
                        TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'circle',
                              color: Colors.blue,
                            ),
                            text: "Click here",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                var url =
                                    "https://www.youtube.com/watch?v=jpaHRQl6wG0";
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }),
                      ]))),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 140,
                    height: 50.0,
                    margin: EdgeInsets.all(10),
                    // ignore: deprecated_member_use
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (context, animation, _) {
                              return Alien3d();
                            },
                            opaque: false));
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff9E9E9E), Color(0xffE0E0E0)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "View in 3D",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 50.0,
                    margin: EdgeInsets.all(10),
                    // ignore: deprecated_member_use
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (__) => LocalAndWebObjectsWidget()));
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff9E9E9E), Color(0xffE0E0E0)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "View in AR",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
