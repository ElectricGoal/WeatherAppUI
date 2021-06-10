import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherApp extends StatelessWidget {
  Widget _themeText(String text, double size) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _colText(String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _themeText(title, 22),
          _themeText(subtitle, 12),
        ],
      ),
    );
  }

  Widget _fCard() {
    var verticalDivider = VerticalDivider(
      color: Colors.grey,
      thickness: 1,
      indent: 28,
      endIndent: 28,
      width: 10,
    );
    return Container(
      height: 100,
      width: 320,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.0),
            side: BorderSide(width: 2, color: Colors.white70),
          ),
          color: Colors.white10,
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _colText("78%", "Humidity"),
              verticalDivider,
              _colText("12km", "Visibility"),
              verticalDivider,
              _colText("Low 0", "UVindex"),
            ],
          )),
    );
  }

  Widget _verticalText() {
    return Wrap(
      direction: Axis.vertical,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: _themeText("Clear skies", 25),
        )
      ],
    );
  }

  Widget _imageAsset() {
    return Image.asset(
      'image/background.jpg',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _degreeText(String num) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(num,
            style: GoogleFonts.comfortaa(
              fontSize: 180,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            )),
        Text("\u00B0",
            style: GoogleFonts.comfortaa(
              fontSize: 100,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        _themeText("Viet Nam", 30),
        _degreeText("19")
      ],
    );

    var row = Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [column, _verticalText()],
    );

    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          child: Stack(
            children: [
              _imageAsset(),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    row,
                    SizedBox(
                      height: 320,
                    ),
                    _fCard(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
