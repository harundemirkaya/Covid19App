class CovidModel {
  List<States>? states;
  Totals? totals;

  CovidModel({this.states, this.totals});

  CovidModel.fromJson(Map<String, dynamic> json) {
    if (json['states'] != null) {
      states = <States>[];
      json['states'].forEach((v) {
        states!.add(new States.fromJson(v));
      });
    }
    totals =
        json['totals'] != null ? new Totals.fromJson(json['totals']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.states != null) {
      data['states'] = this.states!.map((v) => v.toJson()).toList();
    }
    if (this.totals != null) {
      data['totals'] = this.totals!.toJson();
    }
    return data;
  }
}

class States {
  String? state;
  int? cases;
  int? recoveries;
  int? deaths;
  int? total;

  States({this.state, this.cases, this.recoveries, this.deaths, this.total});

  States.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    cases = json['cases'];
    recoveries = json['recoveries'];
    deaths = json['deaths'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    data['cases'] = this.cases;
    data['recoveries'] = this.recoveries;
    data['deaths'] = this.deaths;
    data['total'] = this.total;
    return data;
  }
}

class Totals {
  int? cases;
  int? recoveries;
  int? deaths;
  int? total;

  Totals({this.cases, this.recoveries, this.deaths, this.total});

  Totals.fromJson(Map<String, dynamic> json) {
    cases = json['cases'];
    recoveries = json['recoveries'];
    deaths = json['deaths'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cases'] = this.cases;
    data['recoveries'] = this.recoveries;
    data['deaths'] = this.deaths;
    data['total'] = this.total;
    return data;
  }
}
