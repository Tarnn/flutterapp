import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:Tranquilo/utils/app_constants.dart' as Constants;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Search _searchPage = new Search();
  final Profile _profilePage = new Profile();
  final Cart _cartPage = new Cart();

  Widget _showPage = new Search();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color(Constants.shamRock),
            height: double.infinity,
            width: double.infinity,
            child: _showPage),
        bottomNavigationBar: CurvedNavigationBar(
            color: Colors.white,
            backgroundColor: Color(Constants.shamRock),
            buttonBackgroundColor: Colors.white,
            height: 50,
            items: <Widget>[
              Icon(Icons.person, size: 35, color: Colors.green),
              Icon(Icons.search, size: 35, color: Colors.green),
              Icon(Icons.shopping_cart, size: 35, color: Colors.green),
            ],
            onTap: (index) {
              setState(() {
                _showPage = _pageChooser(index);
              });
            },
            animationDuration: Duration(milliseconds: 200),
            animationCurve: Curves.bounceInOut,
            index: 1));
  }

  Widget _pageChooser(final int index) {
    switch (index) {
      case 0:
        return _profilePage;
        break;
      case 1:
        return _searchPage;
        break;
      case 2:
        return _cartPage;
        break;
      default:
        return _searchPage;
        break;
    }
  }
}

class Cart extends StatelessWidget {
  const Cart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Text('Will be a Cart ListView')],
    );
  }
}

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Text('Will be a Search ListView')],
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
child:  Container(
            width: double.infinity,
            color: Colors.blue,
            child: ClipPath(
                clipper: BuildProfileClipPath(),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.red, Colors.yellow]
                          )
                          ),
                )),
          ),
        )
      ],
    );
  }
}

class BuildProfileClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
