import 'package:covidapp/models/covidModel.dart';
import 'package:flutter/material.dart';
import 'package:covidapp/services/fetchCountry.dart';

class covidPage extends StatefulWidget {
  const covidPage({Key? key}) : super(key: key);

  @override
  State<covidPage> createState() => _covidPageState();
}

class _covidPageState extends State<covidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: FutureBuilder<CovidModel>(
            future: FetchCountry().fetchData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.states.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title:
                            Text(snapshot.data!.states[index].state.toString()),
                        subtitle:
                            Text(snapshot.data!.states[index].cases.toString()),
                      );
                    });
              } else {
                return CircularProgressIndicator();
              }
            }),
      )),
    );
  }
}
