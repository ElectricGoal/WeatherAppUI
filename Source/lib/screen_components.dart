import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TextWidget extends StatelessWidget {
  TextWidget({Key? key, this.text, this.size}) : super(key: key);

  final String? text;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.lato(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}

class ColText extends StatelessWidget {
  final String? title;
  final String? subtitle;
  ColText({Key? key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWidget(text: title, size: 22),
          TextWidget(text: subtitle, size: 12),
        ],
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  const WeatherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              ColText(title: "78%", subtitle: "Humidity"),
              VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                indent: 28,
                endIndent: 28,
                width: 10,
              ),
              ColText(title: "12km", subtitle: "Visibility"),
              VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                indent: 28,
                endIndent: 28,
                width: 10,
              ),
              ColText(title: "Low 0", subtitle: "UVindex"),
            ],
          )),
    );
  }
}

class DegreeText extends StatelessWidget {
  const DegreeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("19",
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
}


class VerticalText extends StatelessWidget {
  const VerticalText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: TextWidget(text: "Clear skies", size: 25),
        )
      ],
    );
  }
}