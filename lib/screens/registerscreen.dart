import 'package:flutter/material.dart';
import 'package:mylogin/utilities/color.dart';
import 'package:mylogin/utilities/sizes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.blue),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          //first rectangular image in background

          Positioned(
            child: Container(
              width: screenwidth,
              height: screenheight + (screenheight / 5.5 - 20),
              color: Color(0xFF7FB77E),
            ),
          ),
          // Register text on stack
          Positioned(
            left: 26,
            top: 112,
            child: Text(
              "Register",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: "Quicksand",
                fontSize: 48,
              ),
            ),
          ),
          //top right ellipse
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/ellipse3934.png",
              // height: 250,
              // width: 250,
            ),
          ),

          Positioned(
              left: 28,
              top: screenheight * 0.30,
              child: Image.asset("assets/images/Ellipse 3936register.png")),
          Positioned(
              left: 1,
              top: screenheight * 0.28,
              child: Image.asset("assets/images/Ellipse5 register.png")),
          //textfield container
          Positioned(
            top: screenheight * 0.34,
            // height: screenheight-(screenheight/2),
            // bottom: s,
            child: Container(
              height: 700,
              width: screenwidth,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: textfield(),
              ),
            ),
          ),
          circuleravatar(context)
        ],
      )),
    );
  }
}

class textfield extends StatefulWidget {
  const textfield({super.key});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  bool _obsecure = true;
  bool _obsecure1 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            "Name ",
            style: TextStyle(
                fontFamily: "Quicksand",
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: "Your Name ",
              hintStyle: TextStyle(color: Color(0xFFADADAD))
              // enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(color: Colors.black))
              ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Text(
            "Phone Number ",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Quicksand",
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: "Your Phone Number e.g :+01 112 xxx xxx",
              hintStyle: TextStyle(color: Color(0xFFADADAD))
              // enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(color: Colors.black))
              ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            "One Time Password ",
            style: TextStyle(
                fontFamily: "Quicksand",
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: "Enter recived code",
              hintStyle: TextStyle(color: Color(0xFFADADAD))
              // enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(color: Colors.black))
              ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            "Create new Password ",
            style: TextStyle(
                fontFamily: "Quicksand",
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
        ),
        TextFormField(
          obscureText: _obsecure1,
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obsecure1 = !_obsecure1;
                    });
                  },
                  child: Icon(
                      _obsecure1 ? Icons.visibility : Icons.visibility_off)),
              hintText: "Create your password at least 8 character",
              hintStyle: TextStyle(color: Color(0xFFADADAD))
              // enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(color: Colors.black))
              ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            "Confirm Password ",
            style: TextStyle(
                fontFamily: "Quicksand",
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
        ),
        TextFormField(
          obscureText: _obsecure,
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obsecure = !_obsecure;
                    });
                  },
                  child: Icon(
                      _obsecure ? Icons.visibility : Icons.visibility_off)),
              hintText: "Retype your password ",
              hintStyle: TextStyle(color: Color(0xFFADADAD))
              // enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(color: Colors.black))
              ),
        ),
        SizedBox(
          height: 20,
        ),
        register_button(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
            TextButton(
                onPressed: (() {}),
                child: Text(
                  "Login here",
                  style: TextStyle(
                    color: Color(0xFF0000FF),
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          TextButton(
              onPressed: (() {}),
              child: Text(
                "Help",
                style: TextStyle(color: Color(0xFF0000FF)),
              )),
        ]),
      ],
    );
  }
}

// Widget textformfields(context) {
//

//   return ;
// }

//circuler avatar function
Widget circuleravatar(context) {
  double screenheight = MediaQuery.of(context).size.height;
  double screenwidth = MediaQuery.of(context).size.width;
  return Positioned(
      top: screenheight * 0.27,
      left: (screenwidth * 0.37),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
        child: CircleAvatar(
          // backgroundImage: Icons.camera,
          backgroundColor: Colors.white,
          child: Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          radius: 60,
          // width: 20,
          // height: 20,
        ),
      ));
}

//Register button
Widget register_button() {
  return ElevatedButton(
    onPressed: (() {}),
    child: Container(
      width: 350,
      height: 50,
      child: Center(
        child: Text(
          "Register",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Quicksand',
            fontSize: AppSizes.fontsize,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: AppColors.maincolor),
  );
}
