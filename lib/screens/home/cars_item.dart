import 'package:flutter/material.dart';
import 'package:flutter_care/screens/details_cars.dart';
import 'package:google_fonts/google_fonts.dart';

class CarItem extends StatelessWidget {
  const CarItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [

          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, spreadRadius: 0.5, blurRadius: 15)
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Tesla X",
                          style: GoogleFonts.montserrat(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "2020",
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500),
                          children: const <TextSpan>[
                            TextSpan(text: '3 November'),
                            TextSpan(
                                text: ' 2023',
                                style: TextStyle(color: Colors.black38)),
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailCarsScreen()));
                          },
                          child: Text(
                            "Details",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400, fontSize: 18,
                                color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 102, 173, 240),
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 15,
            child: Image.asset(
              "assets/images/tesla_1.png",
              width: 150,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}