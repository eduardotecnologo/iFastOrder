import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './widgets/heading_auth.dart';
import 'package:appifast/screens/auth/login_page.dart';

class RegisterPage extends StatelessWidget {
  late double _deviceWidth;
  late double _deviceHeigth;

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: _loginPageUI(context),
        ));
  }

  Widget _loginPageUI(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.10),
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
          ),
          HeadingAuth(),
          Container(
            height: 80,
          ),
          _formLogin(context),
          Container(
            height: 40,
          ),
          _loginButton(context),
          Container(
            height: 40,
          ),
          _textRegister(context),
        ],
      ),
    );
  }
  //
  Widget _formLogin(context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(171, 43, 36, .2),
                  blurRadius: 20.0,
                  offset: Offset(0, 10))
            ]),
        child: Column(
          children: <Widget>[
            _nameTextField(context),
            _emailTextField(context),
            _passwordTextField(context),
          ],
        ));
  }

  Widget _nameTextField(context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      style: TextStyle(color: Theme.of(context).primaryColor),
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: 'Nome Completo',
        hintStyle: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  Widget _emailTextField(context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      style: TextStyle(color: Theme.of(context).primaryColor),
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: 'E-mail',
        hintStyle: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  Widget _passwordTextField(context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      obscureText: true,
      style: TextStyle(color: Theme.of(context).primaryColor),
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        enabledBorder: InputBorder.none,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: 'Password',
        hintStyle: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  Widget _loginButton(context) {
    return Container(
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {
          print('Login....');
          Navigator.pushReplacementNamed(context, '/restaurants');

        },
        color: Theme.of(context).primaryColor,
        child: Text('Cadastrar'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  Widget _textRegister(context) {
    return GestureDetector(
        onTap: () {
          //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
          Navigator.pushReplacementNamed(context, '/login');
        },
        child: Text(
          "J?? possui cadastro? Fa??a login",
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18),
        ));
  }
}