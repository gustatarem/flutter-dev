import 'package:flutter/material.dart';
import 'package:flutter_nu_clone/pages/home_page.dart';
import 'package:flutter_nu_clone/services/service_local_authentication.dart';
import 'package:flutter_nu_clone/services/service_locator.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LocalAuthenticationService _localAuth =
      locator<LocalAuthenticationService>();

  final _auth = LocalAuthentication();

  bool isAuthenticated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(130, 50, 158, 2.0),
      body: _body(context),
    );
  }

  _body(context) {
    return Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                width: 200,
                height: 100,
                child: Image.asset('assets/images/Nubank_Logo.png'),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  height: 60,
                  width: MediaQuery.of(context).size.width / 10 * 4,
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _loginPressed(context);
                    },
                    child: Text(
                      "Sair do app".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  height: 60,
                  width: MediaQuery.of(context).size.width / 10 * 4,
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _loginPressed(context);
                    },
                    child: Text(
                      "Autenticar".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  _loginPressed(context) {
    authenticate();
  }

  Future<void> authenticate() async {
    try {
      isAuthenticated = await _auth.authenticateWithBiometrics(
        localizedReason: 'authenticate to access',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }

    if (isAuthenticated == true) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return HomePage();
      }));
    }
  }
}
