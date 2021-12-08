import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaginaUser extends StatelessWidget {
  const PaginaUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customAppBar(),
            _textsHeader(context),
            _onview(),
            _textdown(context),
            _textdown2(context)
          ],
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            iconSize: 20.0,
            icon: SvgPicture.asset('assets/icons/back.svg'),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 20.0,
            icon: SvgPicture.asset('assets/icons/mas.svg'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _textsHeader(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Dormitorio',
            style: TextStyle(
                height: 1, fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          Text(
            'Hay un total de 3 dispositivos activos',
            style: TextStyle(height: 1, fontSize: 30.0),
          )
        ],
      ),
    );
  }

  Widget _onview() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            iconSize: 190.0,
            color: Colors.blue,
            icon: SvgPicture.asset('assets/icons/ventilador.svg'),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _textdown(context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Ventilador',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Text(
                'On',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                iconSize: 20.0,
                icon: SvgPicture.asset('assets/icons/on.svg'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _textdown2(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Intesidad',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              MaterialButton(
                elevation: 10.0,
                minWidth: 440.0,
                height: 40.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Text(
                  '75%',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
