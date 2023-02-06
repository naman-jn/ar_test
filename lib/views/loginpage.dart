import 'package:flutter/material.dart';
import 'package:project/shared/colors.dart';
import 'package:project/views/homepage.dart';

class IntroSignUp extends StatefulWidget {
  const IntroSignUp({Key key}) : super(key: key);

  @override
  IntroSignUpState createState() => IntroSignUpState();
}

class IntroSignUpState extends State<IntroSignUp> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.contain)),
            ),
            SizedBox(height: 5),
            Text(
              "My CS Buddy",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, _) {
                      return HomePage();
                    },
                    opaque: false));
              },
              child: Container(
                height: 55,
                width: screenSize.width * 0.8,
                decoration: BoxDecoration(
                    color: ColorPalette.primaryRed,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Let's check out",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 17,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
// void openHomePage()
// {
//   Navigator.pushNamed(context, '/HomePage');
// }
}
