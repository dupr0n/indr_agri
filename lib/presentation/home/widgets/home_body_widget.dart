import 'package:flutter/material.dart';

import 'air_temp_widget.dart';
import 'wave_clipper.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
          SizedBox(
            height: 300,
            child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Theme.of(context).primaryColor, Colors.green])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/indr_agri.jpg",
                        width: 200,
                        height: 120,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "AgrIndoor",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'DancingScript',
                            fontWeight: FontWeight.bold,
                          ),
                          textScaleFactor: 4,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          AirTempWidget(),
          const SizedBox(height: 200),
        ]),
      ),
    );
  }
}
