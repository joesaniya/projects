import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'DetailPage.dart';
class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
   late Future <List<Countries>> futureData;
  final String apiURL = 'https://corona-virus-world-and-india-data.p.rapidapi.com/api';


  Future<List<Countries>> fetchJSONData() async {
    print("fetch");
     final response = await http.put(
    Uri.parse('https://corona-virus-world-and-india-data.p.rapidapi.com/api'),
    headers : {
    'x-rapidapi-host' : 'corona-virus-world-and-india-data.p.rapidapi.com',
    'x-rapidapi-key' : '6b43206931mshf9b4796cc4700afp139455jsned3f9fd23fa0'
    }
  );


    if (response.statusCode == 200) {
      print("response1234");

     final jsonItems= json.decode(response.body).cast<Map<String, dynamic>>();
    
   
 
    List<Countries> usersList = jsonItems.map<Countries>((json) {
        print("data");
        return Countries.fromJson(json);
      }).toList();
      print(usersList);
 
      return usersList;
    
    }
      
    
    else {
      print("error");
      throw Exception('Failed to load data from internet');
    }
    
  }


  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text('displaying Data'),
  
      ),

      body: FutureBuilder<List<Countries>>(
        future: fetchJSONData(),
        builder: (context, snapshot) {
 
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
 
          return ListView(
            children: snapshot.data!
            .map((user) => Card(
              child: ListTile(
                    title: Text(user.new_deaths.toString(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    onTap: (){ 
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=>DetailPage(user.new_deaths.toString()))
                      );
                      print(user.new_deaths); 
                    },
                    subtitle: Text(user.new_deaths.toString(),style: TextStyle(fontSize: 18),),
                    trailing: Icon(Icons.arrow_forward),
                    
                  ),
            ),
              )
            .toList(),
          );
        },
      ),

    );
  }
}


class Countries {
  List<CountriesStat>? countriesStat;
  String? statisticTakenAt;
  WorldTotal? worldTotal;

  Countries({required this.countriesStat, required this.statisticTakenAt, required this.worldTotal});

  Countries.fromJson(Map<String, dynamic> json) {
    if (json['countries_stat'] != null) {
      countriesStat = <CountriesStat>[];
      json['countries_stat'].forEach((v) {
        countriesStat?.add(new CountriesStat.fromJson(v));
      });
    }
    statisticTakenAt = json['statistic_taken_at'];
    worldTotal = (json['world_total'] != null
        ? new WorldTotal.fromJson(json['world_total'])
        : null)!;
  }

  String? get new_deaths => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.countriesStat != null) {
      data['countries_stat'] =
          this.countriesStat?.map((v) => v.toJson()).toList();
    }
    data['statistic_taken_at'] = this.statisticTakenAt;
    if (this.worldTotal != null) {
      data['world_total'] = this.worldTotal?.toJson();
    }
    return data;
  }
}

class CountriesStat {
  String? countryName;
  String? cases;
  String? deaths;
  String? region;
  String? totalRecovered;
  String? newDeaths;
  String? newCases;
  String? seriousCritical;
  String? activeCases;
  String? totalCasesPer1mPopulation;
  String? deathsPer1mPopulation;
  String? totalTests;
  String? testsPer1mPopulation;

  CountriesStat(
      {required this.countryName,
      required this.cases,
      required this.deaths,
      required this.region,
      required this.totalRecovered,
      required this.newDeaths,
      required this.newCases,
      required this.seriousCritical,
      required this.activeCases,
      required this.totalCasesPer1mPopulation,
      required this.deathsPer1mPopulation,
      required this.totalTests,
      required this.testsPer1mPopulation});

  CountriesStat.fromJson(Map<String, dynamic> json) {
    countryName = json['country_name'];
    cases = json['cases'];
    deaths = json['deaths'];
    region = json['region'];
    totalRecovered = json['total_recovered'];
    newDeaths = json['new_deaths'];
    newCases = json['new_cases'];
    seriousCritical = json['serious_critical'];
    activeCases = json['active_cases'];
    totalCasesPer1mPopulation = json['total_cases_per_1m_population'];
    deathsPer1mPopulation = json['deaths_per_1m_population'];
    totalTests = json['total_tests'];
    testsPer1mPopulation = json['tests_per_1m_population'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country_name'] = this.countryName;
    data['cases'] = this.cases;
    data['deaths'] = this.deaths;
    data['region'] = this.region;
    data['total_recovered'] = this.totalRecovered;
    data['new_deaths'] = this.newDeaths;
    data['new_cases'] = this.newCases;
    data['serious_critical'] = this.seriousCritical;
    data['active_cases'] = this.activeCases;
    data['total_cases_per_1m_population'] = this.totalCasesPer1mPopulation;
    data['deaths_per_1m_population'] = this.deathsPer1mPopulation;
    data['total_tests'] = this.totalTests;
    data['tests_per_1m_population'] = this.testsPer1mPopulation;
    return data;
  }
}

class WorldTotal {
  String? totalCases;
  String? newCases;
  String? totalDeaths;
  String? newDeaths;
  String? totalRecovered;
  String? activeCases;
  String? seriousCritical;
  String? totalCasesPer1mPopulation;
  String? deathsPer1mPopulation;
  String? statisticTakenAt;

  WorldTotal(
      {required this.totalCases,
      required this.newCases,
      required this.totalDeaths,
      required this.newDeaths,
      required this.totalRecovered,
      required this.activeCases,
      required this.seriousCritical,
      required this.totalCasesPer1mPopulation,
      required this.deathsPer1mPopulation,
      required this.statisticTakenAt});

  WorldTotal.fromJson(Map<String, dynamic> json) {
    totalCases = json['total_cases'];
    newCases = json['new_cases'];
    totalDeaths = json['total_deaths'];
    newDeaths = json['new_deaths'];
    totalRecovered = json['total_recovered'];
    activeCases = json['active_cases'];
    seriousCritical = json['serious_critical'];
    totalCasesPer1mPopulation = json['total_cases_per_1m_population'];
    deathsPer1mPopulation = json['deaths_per_1m_population'];
    statisticTakenAt = json['statistic_taken_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_cases'] = this.totalCases;
    data['new_cases'] = this.newCases;
    data['total_deaths'] = this.totalDeaths;
    data['new_deaths'] = this.newDeaths;
    data['total_recovered'] = this.totalRecovered;
    data['active_cases'] = this.activeCases;
    data['serious_critical'] = this.seriousCritical;
    data['total_cases_per_1m_population'] = this.totalCasesPer1mPopulation;
    data['deaths_per_1m_population'] = this.deathsPer1mPopulation;
    data['statistic_taken_at'] = this.statisticTakenAt;
    return data;
  }
}

// class States {
//   int date;
//   String state;
// //   int positive;
//  String probableCases;
// //   // String negative;
// //   // String pending;
// //   String totalTestResultsSource;
// //   int totalTestResults;
// //   int hospitalizedCurrently;
// //   int hospitalizedCumulative;
// //   // String inIcuCurrently;
// //   // String inIcuCumulative;
// //   int onVentilatorCurrently;
// //  // String onVentilatorCumulative;
// //  // String recovered;
// //   String lastUpdateEt;
// //   String dateModified;
// //   String checkTimeEt;
// //   int death;
// //   int hospitalized;
// //  // String hospitalizedDischarged;
// //   String dateChecked;
// //   int totalTestsViral;
// //   int positiveTestsViral;
// //   int negativeTestsViral;
// //   // String positiveCasesViral;
// //   // String deathConfirmed;
// //   // String deathProbable;
// //   // String totalTestEncountersViral;
// //   // String totalTestsPeopleViral;
// //   // String totalTestsAntibody;
// //   // String positiveTestsAntibody;
// //   // String negativeTestsAntibody;
// //   // String totalTestsPeopleAntibody;
// //   // String positiveTestsPeopleAntibody;
// //   // String negativeTestsPeopleAntibody;
// //   // String totalTestsPeopleAntigen;
// //   // String positiveTestsPeopleAntigen;
// //   // String totalTestsAntigen;
// //   // String positiveTestsAntigen;
// //   String fips;
// //   int positiveIncrease;
// //   int negativeIncrease;
// //   int total;
// //   int totalTestResultsIncrease;
// //   int posNeg;
// //  // String dataQualityGrade;
// //   int deathIncrease;
// //   int hospitalizedIncrease;
// //   String hash;
// //   int commercialScore;
// //   int negativeRegularScore;
// //   int negativeScore;
// //   int positiveScore;
// //   int score;
// //   String grade;

//   States(
//       {required this.date,
//       required this.state,
//     //   required this.positive,
//    required this.probableCases,
//     //   // required this.negative,
//     //   // required this.pending,
//     //   required this.totalTestResultsSource,
//     //   required this.totalTestResults,
//     //   required this.hospitalizedCurrently,
//     //   required this.hospitalizedCumulative,
//     //   // required this.inIcuCurrently,
//     //   // required this.inIcuCumulative,
//     //   required this.onVentilatorCurrently,
//     //  // required this.onVentilatorCumulative,
//     //  // required this.recovered,
//     //   required this.lastUpdateEt,
//     //   required this.dateModified,
//     //   required this.checkTimeEt,
//     //   required this.death,
//     //   required this.hospitalized,
//     //  // required this.hospitalizedDischarged,
//     //   required this.dateChecked,
//     //   required this.totalTestsViral,
//     //   required this.positiveTestsViral,
//     //   required this.negativeTestsViral,
//     //   // required this.positiveCasesViral,
//     //   // required this.deathConfirmed,
//     //   // required this.deathProbable,
//     //   // required this.totalTestEncountersViral,
//     //   // required this.totalTestsPeopleViral,
//     //   // required this.totalTestsAntibody,
//     //   // required this.positiveTestsAntibody,
//     //   // required this.negativeTestsAntibody,
//     //   // required this.totalTestsPeopleAntibody,
//     //   // required this.positiveTestsPeopleAntibody,
//     //   // required this.negativeTestsPeopleAntibody,
//     //   // required this.totalTestsPeopleAntigen,
//     //   // required this.positiveTestsPeopleAntigen,
//     //   // required this.totalTestsAntigen,
//     //   // required this.positiveTestsAntigen,
//     //   required this.fips,
//     //   required this.positiveIncrease,
//     //   required this.negativeIncrease,
//     //   required this.total,
//     //   required this.totalTestResultsIncrease,
//     //   required this.posNeg,
//     //  // required this.dataQualityGrade,
//     //   required this.deathIncrease,
//     //   required this.hospitalizedIncrease,
//     //   required this.hash,
//     //   required this.commercialScore,
//     //   required this.negativeRegularScore,
//     //   required this.negativeScore,
//     //   required this.positiveScore,
//     //   required this.score,
//     //   required this.grade
//     });

//   factory States.fromJson(Map<String, dynamic> json) {
//     return States(
//     date : json['date'],
//     state : json['state'],
//   //   positive : json['positive'],
// probableCases : json['probableCases'].toString(),
//   //   //negative : json['negative'],
//   //   //pending : json['pending'],
//   //   totalTestResultsSource : json['totalTestResultsSource'],
//   //   totalTestResults : json['totalTestResults'],
//   //   hospitalizedCurrently : json['hospitalizedCurrently'],
//   //   hospitalizedCumulative : json['hospitalizedCumulative'],
//   //   //inIcuCurrently : json['inIcuCurrently'],
//   //   //inIcuCumulative : json['inIcuCumulative'],
//   //   onVentilatorCurrently : json['onVentilatorCurrently'],
//   //  // onVentilatorCumulative : json['onVentilatorCumulative'],
//   //   //recovered : json['recovered'],
//   //   lastUpdateEt : json['lastUpdateEt'],
//   //   dateModified : json['dateModified'],
//   //   checkTimeEt : json['checkTimeEt'],
//   //   death : json['death'],
//   //   hospitalized : json['hospitalized'],
//   //   //hospitalizedDischarged : json['hospitalizedDischarged'],
//   //   dateChecked : json['dateChecked'],
//   //   totalTestsViral : json['totalTestsViral'],
//   //   positiveTestsViral : json['positiveTestsViral'],
//   //   negativeTestsViral : json['negativeTestsViral'],
//   //   //positiveCasesViral : json['positiveCasesViral'],
//   //   //deathConfirmed : json['deathConfirmed'],
//   //   // deathProbable : json['deathProbable'],
//   //   // totalTestEncountersViral : json['totalTestEncountersViral'],
//   //   // totalTestsPeopleViral : json['totalTestsPeopleViral'],
//   //   // totalTestsAntibody : json['totalTestsAntibody'],
//   //   // positiveTestsAntibody : json['positiveTestsAntibody'],
//   //   // negativeTestsAntibody : json['negativeTestsAntibody'],
//   //   // totalTestsPeopleAntibody : json['totalTestsPeopleAntibody'],
//   //   // positiveTestsPeopleAntibody : json['positiveTestsPeopleAntibody'],
//   //   // negativeTestsPeopleAntibody : json['negativeTestsPeopleAntibody'],
//   //   // totalTestsPeopleAntigen : json['totalTestsPeopleAntigen'],
//   //   // positiveTestsPeopleAntigen : json['positiveTestsPeopleAntigen'],
//   //   // totalTestsAntigen : json['totalTestsAntigen'],
//   //   // positiveTestsAntigen : json['positiveTestsAntigen'],
//   //   fips : json['fips'],
//   //   positiveIncrease : json['positiveIncrease'],
//   //   negativeIncrease : json['negativeIncrease'],
//   //   total : json['total'],
//   //   totalTestResultsIncrease : json['totalTestResultsIncrease'],
//   //   posNeg : json['posNeg'],
//   //   //dataQualityGrade : json['dataQualityGrade'],
//   //   deathIncrease : json['deathIncrease'],
//   //   hospitalizedIncrease : json['hospitalizedIncrease'],
//   //   hash : json['hash'],
//   //   commercialScore : json['commercialScore'],
//   //   negativeRegularScore : json['negativeRegularScore'],
//   //   negativeScore : json['negativeScore'],
//   //   positiveScore : json['positiveScore'],
//   //   score : json['score'],
//   //   grade : json['grade']
//     );
//   }

// }

