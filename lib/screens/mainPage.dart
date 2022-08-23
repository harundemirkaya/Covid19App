import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'covidPage.dart';

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(255, 246, 234, 1),
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'lib/assets/img/mainWhite.png',
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
                Image.asset('lib/assets/img/doctor.png'),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            const Text(
              'Make The World 100% Vaccinated.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(87, 51, 83, 1)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Vaccination is a simple, safe & effective way of protecting you against COVID19.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 19,
                    color: Color.fromRGBO(129, 129, 129, 1)),
              ),
            ),
            const Spacer(),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'lib/assets/img/mainBottom.png',
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.03),
                    child: IconButton(
                      icon: Image.asset(
                        'lib/assets/img/mainArrow.png',
                      ),
                      iconSize: 10,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => covidPage()),
                        );
                      },
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}