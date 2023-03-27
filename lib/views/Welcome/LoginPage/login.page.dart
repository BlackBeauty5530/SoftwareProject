import 'package:flutter/material.dart';
import 'package:untitled4/views/Signup/signup.page.dart';

import '../../../controller/controller.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
  backgroundColor: Colors.white,
);

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            Positioned(
              top: 250,
              left: 150,
              child: Image.asset("assets/images/SpiderIcon.png"),
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 100,
                    left: 130,
                    child: Text(' LOGIN ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 220,
                      right: 40,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        width: size.width * 0.8,
                        height: size.height* 0.08,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            hintText: "Your E-mail",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      ),
                  ],
                ),
              ),
            Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 130,
                    right: 40,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      width: size.width * 0.8,
                      height: size.height* 0.08,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          hintText: "Password",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child:  Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 50,
                    left: 125,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child:  TextButton(
                        style: flatButtonStyle,
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return const ControllerPage();},),);},
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
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 25,
                    right: 111.5,
                      child: GestureDetector(
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpPage();},),);},
                          child: Text(
                            "Don't have an Account ? ",
                            style: TextStyle(color: Colors.white),
                          )
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      )

    );
  }
}
