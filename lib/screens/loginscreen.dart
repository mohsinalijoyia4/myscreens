import 'package:flutter/material.dart';
import 'package:mylogin/utilities/color.dart';
import 'package:mylogin/utilities/sizes.dart';
import 'package:mylogin/screens/registerscreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainbody(context),
    );
  }
}

Widget mainbody(context) {
  double screenheight = MediaQuery.of(context).size.height;
  double screenwidth = MediaQuery.of(context).size.width;
  return Scaffold(
    body: SafeArea(
      //page main body with singlechildView
      child: SingleChildScrollView(
        // physics: ScrollPhysic,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //stack for stacking pictures in background of login page
            Stack(
              children: [
                //first rectangular image in background
                SizedBox(
                  width: screenwidth,
                  // print(${screenwidth});
                  child: Image.asset(
                    "assets/images/rectangle1.png",
                  ),
                ),
                //Login text on stack
                Positioned(
                  left: 26,
                  top: 112,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Quicksand",
                      fontSize: 48,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/elipse.png",
                    // height: 250,
                    // width: 250,
                  ),
                ),
                Positioned(
                    left: 28,
                    bottom: 10,
                    child: Image.asset("assets/images/elipse1.png")),
                Positioned(
                    left: 1,
                    bottom: 60,
                    child: Image.asset("assets/images/Ellipse2.png"))
              ],
            ),
            //Text fields
            Container(
              height: screenheight - 350,
              width: screenwidth,
              color: Colors.white,
              child: Column(
                children: [
                  Textformfield(),
                  //Login _Button
                  SizedBox(
                    height: 50,
                    width: screenwidth - AppSizes.fifty,
                    child: register_button(),
                  ),
                  //Don't have an account yet? text and Register  button Row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account yet? ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      register(context)
                    ],
                  ),
                  //help bottum buttom
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: (() {}),
                              child: Text(
                                "Help",
                                style: TextStyle(color: Color(0xFF0000FF)),
                              )),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

//Register here Button and text

Widget register(context) {
  return TextButton(
    onPressed: (() {
      Navigator.push(context, MaterialPageRoute(builder: ((context) {
        return RegisterPage();
      })));
    }),
    child: Text(
      "Register here",
      style: TextStyle(
          color: Color(0xFF0000FF),
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w700),
    ),
  );
}

//register_button Function
Widget register_button() {
  return ElevatedButton(
    onPressed: (() {}),
    child: Text(
      "Login",
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Quicksand',
        fontSize: AppSizes.fontsize,
        fontWeight: FontWeight.w700,
      ),
    ),
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: AppColors.maincolor),
  );
}

//Login Form Fields Class
class Textformfield extends StatefulWidget {
  const Textformfield({super.key});

  @override
  State<Textformfield> createState() => _TextformfieldState();
}

//textfields
class _TextformfieldState extends State<Textformfield> {
  bool? throwShotAway = false;
  bool _obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: AppSizes.topPadding,
          right: AppSizes.topPadding,
          bottom: AppSizes.topPadding,
          top: AppSizes.topPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Phone number text
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Phone number",
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.black,
                  fontSize: AppSizes.fontsize,
                  fontWeight: FontWeight.w700),
            ),
          ),
          //phone number textfields
          TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter your phone number",
              ),
              validator: (value) {
                if (value?.isEmpty != false) {
                  return "Username cannot be Empty";
                }
                return null;
              },
              onChanged: (value) {
                // name = value;
                setState(() {});
              }),
          //password text
          const Padding(
            padding: EdgeInsets.only(top: 38, bottom: 10),
            child: Text(
              "Password",
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.black,
                  fontSize: AppSizes.fontsize,
                  fontWeight: FontWeight.w700),
            ),
          ),
          //textfield of password
          TextFormField(
            obscureText: _obsecure,
            decoration: InputDecoration(
              hintText: "Enter the Password",
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obsecure = !_obsecure;
                    });
                  },
                  child: Icon(
                      _obsecure ? Icons.visibility : Icons.visibility_off)),
              // labelText: "Password",
            ),
            validator: (value) {
              if (value?.isEmpty != false) {
                return "Password cannot be empty";
              } else if (value != null && value.length < 6) {
                return "Password length should be at least 6";
              }
              return null;
            },
          ),
          //check box and Forgot Password RowS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    visualDensity: VisualDensity.standard,
                    activeColor: Colors.grey,
                    // title: Text("Stay Login"),
                    value: throwShotAway,
                    onChanged: (bool? value) {
                      // print(value);
                      setState(() {
                        throwShotAway = value;
                      });
                    },
                  ),
                  Text("Stay logged in?")
                ],
              ),
              Text("Forgot Password?")
            ],
          ),
        ],
      ),
    );
  }
}
