import 'package:flutter/material.dart';
import 'package:untitled4/views/Welcome/LoginPage/login.page.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
  backgroundColor: Colors.white,
);

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                top: 150,
                left: 150,
                child: Image.asset("assets/images/SpiderIcon.png"),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 55,
                      left: 111,
                      child: Text(' SIGN UP ',
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
                      bottom: 400,
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
                        child: TextFormField(
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            hintText: "Name",
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
                      bottom: 330,
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
                        child: TextFormField(
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            hintText: "Surname",
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
                      bottom: 260,
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
                        child: TextFormField(
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            hintText: "Your E-Mail",
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
                      bottom: 190,
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
                        child: TextFormField(
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
                      bottom: 120,
                      right: 115,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child:  TextButton(
                          style: flatButtonStyle,
                          onPressed: (){},
                          child:Text(' SIGN UP ',
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
                      bottom: 95,
                      right: 85,
                      child: GestureDetector(
                          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){return LoginPage();},),);},
                          child: Text(
                            "Already have an Account ? ",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 18),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 68,
                      right: 182,
                          child: Text(
                            "OR",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 18),
                          )
                      ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 13,
                        left: 90,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,
                            color: Colors.white,),
                            shape: BoxShape.circle,
                          ),
                            child: InkWell(
                              onTap: (){},
                              child: ClipRRect(
                                child: Image.asset("assets/images/Twitter.png",height: 30,
                                  width: 30,),
                              ),
                            )
                        ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 13,
                      left: 170,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2,
                            color: Colors.white,),
                          shape: BoxShape.circle,
                        ),
                          child: InkWell(
                            onTap: (){},
                            child: ClipRRect(
                              child: Image.asset("assets/images/Facebook.png",height: 30,
                                width: 30,),
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 13,
                      left: 250,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2,
                            color: Colors.white,),
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          onTap: (){},
                          child: ClipRRect(
                            child: Image.asset("assets/images/Google.png",height: 30,
                              width: 30,),
                          ),
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
