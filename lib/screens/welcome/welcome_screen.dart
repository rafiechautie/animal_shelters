import 'package:animal_shelters/screens/login/login_screen.dart';
import 'package:animal_shelters/screens/register/regis_screnn.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        if(constraints.maxWidth > 800){
          return WelcomeWebPage();
        }else{
          return WelcomeMobilPage();
        }
      },
    );
  }
}

class WelcomeMobilPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello There",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                SizedBox(height: 30),
                Text(
                  "Silahkan login terlebih dahulu untuk masuk ke halaman utama",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/welcome.png"))
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen())
                      );
                    },
                    color: Colors.indigoAccent,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: double.maxFinite,
                  height: 60,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisScreen())
                    );
                  },
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

class WelcomeWebPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello There",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                SizedBox(height: 30),
                Text(
                  "Silahkan login terlebih dahulu untuk masuk ke halaman utama",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/welcome.png"))
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: MaterialButton(
                    minWidth: 1000,
                    height: 60,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen())
                      );
                    },
                    color: Colors.indigoAccent,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: 1000,
                  height: 60,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisScreen())
                    );
                  },
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }

}

