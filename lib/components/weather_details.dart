import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatefulWidget {
  final DayDetails;
  const Details({Key? key, this.DayDetails}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // var DetailsDayForcast =
  @override
  Widget build(BuildContext context) {
    var DetailsDayForcast = widget.DayDetails[0];
    int maxtemp = DetailsDayForcast["day"]["maxtemp_c"].toInt();
    int mintemp = DetailsDayForcast["day"]["mintemp_c"].toInt();
    String Sunrise = DetailsDayForcast["astro"]["sunrise"];
    String Sunset = DetailsDayForcast["astro"]["sunset"];
    String Moonrise = DetailsDayForcast["astro"]["moonrise"];
    String Moonset = DetailsDayForcast["astro"]["moonset"];
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 180,
                width: 180,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20.0)],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 54, 54, 54),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sun Rise:",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffABCFF2),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          Sunrise,
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w900,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 180,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20.0)],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 54, 54, 54),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sun Set:",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffABCFF2),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          Sunset,
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w900,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 180,
                width: 180,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20.0)],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 54, 54, 54),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Moon Rise:",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffABCFF2),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          Moonrise,
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w900,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 180,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20.0)],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 54, 54, 54),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Moon Set:",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffABCFF2),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          Moonset,
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w900,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 180,
                width: 180,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20.0)],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 54, 54, 54),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Max Temperature:",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffABCFF2),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          maxtemp.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 180,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20.0)],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 54, 54, 54),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Min Temperature:",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffABCFF2),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          mintemp.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
