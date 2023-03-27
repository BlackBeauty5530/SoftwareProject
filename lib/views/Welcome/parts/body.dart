import 'package:flutter/material.dart';
import 'package:untitled4/views/Signup/signup.page.dart';
import 'package:untitled4/views/Welcome/LoginPage/login.page.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
  backgroundColor: Colors.white,
);
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.red,
                  ],
                ),
              ),
            ),
            Container(
              height: size.height,
              width: double.infinity,
              alignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 200,
                    left: 150,
                    child: Image.asset("assets/images/SpiderIcon.png"),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text("WELCOME TO TARANTULA",
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
            ),
            Container(
              child:  Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 220,
                    left: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child:  TextButton(
                        style: flatButtonStyle,
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return LoginPage();},),);},
                        child:Text(' LOGIN ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                child:  Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 220,
                      right: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child:  TextButton(
                          style: flatButtonStyle,
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpPage();},),);},
                          child:Text('SING UP',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}